// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOutpostInstanceType.
class GetOutpostInstanceTypeArgs {
  /// Outpost ARN.
  ///
  /// The following arguments are optional:
  final Input<String> arn;

  /// Desired instance type. Conflicts with <span pulumi-lang-nodejs="`preferredInstanceTypes`" pulumi-lang-dotnet="`PreferredInstanceTypes`" pulumi-lang-go="`preferredInstanceTypes`" pulumi-lang-python="`preferred_instance_types`" pulumi-lang-yaml="`preferredInstanceTypes`" pulumi-lang-java="`preferredInstanceTypes`">`preferred_instance_types`</span>.
  final Input<String>? instanceType;

  /// Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span>.
  final Input<List<String>>? preferredInstanceTypes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetOutpostInstanceTypeArgs({
    required this.arn,
    this.instanceType,
    this.preferredInstanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final preferredInstanceTypesValue = preferredInstanceTypes;
    if (preferredInstanceTypesValue != null) {
      map['preferredInstanceTypes'] = preferredInstanceTypesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetOutpostInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypeArgs(
      arn: Input.asInput<String>(map['arn']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      preferredInstanceTypes:
          Input.asOptionalInput<List<String>>(map['preferredInstanceTypes']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
