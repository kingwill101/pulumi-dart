// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseLicenseMetadata {
  /// The key name.
  final pulumi.Input<String> name;
  /// The value.
  final pulumi.Input<String> value;

  /// Creates a new [GetReceivedLicenseLicenseMetadata].
  /// [name] The key name.
  /// [value] The value.
  GetReceivedLicenseLicenseMetadata({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetReceivedLicenseLicenseMetadata.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseLicenseMetadata(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

