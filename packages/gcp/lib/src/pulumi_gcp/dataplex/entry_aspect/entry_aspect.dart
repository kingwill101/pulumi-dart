// ignore_for_file: unused_element, unnecessary_cast

import '../entry_aspect_aspect/entry_aspect_aspect.dart';

class EntryAspect {
  /// A nested object resource.
  /// Structure is documented below.
  final EntryAspectAspect aspect;

  /// Depending on how the aspect is attached to the entry, the format of the aspect key can be one of the following:
  /// If the aspect is attached directly to the entry: {project_number}.{locationId}.{aspectTypeId}
  /// If the aspect is attached to an entry's path: {project_number}.{locationId}.{aspectTypeId}@{path}
  final String aspectKey;

  EntryAspect({
    required this.aspect,
    required this.aspectKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aspect'] = aspect.toMap();
    map['aspectKey'] = aspectKey;
    return map;
  }

  factory EntryAspect.fromMap(Map<String, dynamic> map) {
    return EntryAspect(
      aspect: EntryAspectAspect.fromMap(
          (map['aspect'] as Map).cast<String, dynamic>()),
      aspectKey: map['aspectKey'] as String,
    );
  }
}
