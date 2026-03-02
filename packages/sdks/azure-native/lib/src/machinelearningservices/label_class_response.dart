// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label class definition
class LabelClassResponse {
  /// Display name of the label class.
  final pulumi.Input<String>? displayName;
  /// Dictionary of subclasses of the label class.
  final pulumi.Input<Map<String, LabelClassResponse>>? subclasses;

  /// Creates a new [LabelClassResponse].
  /// [displayName] Display name of the label class.
  /// [subclasses] Dictionary of subclasses of the label class.
  LabelClassResponse({
    this.displayName,
    this.subclasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'subclasses': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelClassResponse>, Map<String, Map<String, dynamic>>>(subclasses, (value) => pulumi.Input.encodeMapValues<LabelClassResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LabelClassResponse.fromMap(Map<String, dynamic> map) {
    return LabelClassResponse(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      subclasses: map['subclasses'] == null ? null : (pulumi.Input.decodeMapValues<LabelClassResponse>(map['subclasses'], (value) => LabelClassResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

