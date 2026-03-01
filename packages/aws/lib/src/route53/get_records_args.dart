// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_records_get_records_args_doc}
/// Arguments for getRecords.
/// {@endtemplate}
/// {@macro pulumi_route53_get_records_get_records_args_doc}
class GetRecordsArgs {
  /// Regex string to apply to the resource record names returned by AWS.
  final pulumi.Input<String>? nameRegex;
  /// The ID of the hosted zone that contains the resource record sets that you want to list.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetRecordsArgs].
  /// [nameRegex] Regex string to apply to the resource record names returned by AWS.
  /// [zoneId] The ID of the hosted zone that contains the resource record sets that you want to list.
  GetRecordsArgs({
    String? nameRegex,
    required String zoneId,
  }) :
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'zoneId': zoneId,
    };
  }

  factory GetRecordsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordsArgs(
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

