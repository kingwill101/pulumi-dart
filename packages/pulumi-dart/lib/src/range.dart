import 'input.dart';

/// One stable entry in a Pulumi resource range.
final class RangeEntry {
  const RangeEntry(this.key, this.value);

  final Object? key;
  final dynamic value;
}

/// Converts a Pulumi resource `range` value into stable key/value entries.
Iterable<RangeEntry> rangeEntries(Object? value) sync* {
  if (value is num) {
    for (var index = 0; index < value.toInt(); index++) {
      yield RangeEntry(index, index);
    }
    return;
  }
  if (value is Map) {
    final keys = value.keys.toList()
      ..sort((left, right) => left.toString().compareTo(right.toString()));
    for (final key in keys) {
      yield RangeEntry(key, value[key]);
    }
    return;
  }
  if (value is Iterable) {
    var index = 0;
    for (final item in value) {
      yield RangeEntry(index++, item);
    }
    return;
  }
  throw ArgumentError.value(
    value,
    'value',
    'Expected number, map, or iterable',
  );
}

/// Resolves an output-backed range, returning no entries while it is unknown.
Future<Iterable<RangeEntry>> resolveRangeEntries(Object? value) async {
  final data = await Input.asInput<dynamic>(value).toOutput().getData();
  return data.isKnown ? rangeEntries(data.value) : const <RangeEntry>[];
}
