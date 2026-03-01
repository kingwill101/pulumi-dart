// ignore_for_file: unused_element, unnecessary_cast


/// NamedResourcesStringSlice contains a slice of strings.
class NamedResourcesStringSlice {
  /// Strings is the slice of strings.
  final List<String> strings;

  /// Creates a new [NamedResourcesStringSlice].
  /// [strings] Strings is the slice of strings.
  NamedResourcesStringSlice({
    required this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strings': strings,
    };
  }

  factory NamedResourcesStringSlice.fromMap(Map<String, dynamic> map) {
    return NamedResourcesStringSlice(
      strings: (map['strings'] as List).cast<String>(),
    );
  }
}

