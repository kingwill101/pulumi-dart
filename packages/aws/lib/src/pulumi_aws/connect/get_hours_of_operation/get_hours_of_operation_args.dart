// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHoursOfOperation.
class GetHoursOfOperationArgs {
  /// Returns information on a specific Hours of Operation by hours of operation id
  final Input<String>? hoursOfOperationId;

  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Hours of Operation by name
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`hoursOfOperationId`" pulumi-lang-dotnet="`HoursOfOperationId`" pulumi-lang-go="`hoursOfOperationId`" pulumi-lang-python="`hours_of_operation_id`" pulumi-lang-yaml="`hoursOfOperationId`" pulumi-lang-java="`hoursOfOperationId`">`hours_of_operation_id`</span> is required.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the Hours of Operation.
  final Input<Map<String, String>>? tags;

  GetHoursOfOperationArgs({
    this.hoursOfOperationId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hoursOfOperationIdValue = hoursOfOperationId;
    if (hoursOfOperationIdValue != null) {
      map['hoursOfOperationId'] = hoursOfOperationIdValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetHoursOfOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationArgs(
      hoursOfOperationId:
          Input.asOptionalInput<String>(map['hoursOfOperationId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
