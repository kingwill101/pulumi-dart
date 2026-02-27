// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRecords.
class GetRecordsArgs {
  /// Regex string to apply to the resource record names returned by AWS.
  final pulumi.Input<String>? nameRegex;

  /// The ID of the hosted zone that contains the resource record sets that you want to list.
  final pulumi.Input<String> zoneId;

  GetRecordsArgs({
    this.nameRegex,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory GetRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordsArgs(
      nameRegex: pulumi.Input.asOptionalInput<String>(map['nameRegex']),
      zoneId: pulumi.Input.asInput<String>(map['zoneId']),
    );
  }
}
