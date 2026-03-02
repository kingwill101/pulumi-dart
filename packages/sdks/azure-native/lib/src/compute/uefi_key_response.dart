// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A UEFI key signature.
class UefiKeyResponse {
  /// The type of key signature.
  final pulumi.Input<String>? type;
  /// The value of the key signature.
  final pulumi.Input<List<String>>? value;

  /// Creates a new [UefiKeyResponse].
  /// [type] The type of key signature.
  /// [value] The value of the key signature.
  UefiKeyResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory UefiKeyResponse.fromMap(Map<String, dynamic> map) {
    return UefiKeyResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : ((map['value'] as List).cast<String>()).input(),
    );
  }
}

