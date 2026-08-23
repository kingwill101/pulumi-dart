// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseValidity {
  /// Start of the validity time range.
  final pulumi.Input<String> begin;
  /// End of the validity time range.
  final pulumi.Input<String> end;

  /// Creates a new [GetReceivedLicenseValidity].
  /// [begin] Start of the validity time range.
  /// [end] End of the validity time range.
  const GetReceivedLicenseValidity({
    required this.begin,
    required this.end,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'begin': begin,
      'end': end,
    };
  }

  factory GetReceivedLicenseValidity.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseValidity(
      begin: pulumi.Input.fromValue(map['begin'] as String),
      end: pulumi.Input.fromValue(map['end'] as String),
    );
  }
}
