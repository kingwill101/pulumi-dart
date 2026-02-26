// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DedicatedHost.
class DedicatedHostArgs {
  /// The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  final Input<String>? assetId;

  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span>, <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>. Default: <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span>.
  final Input<String>? autoPlacement;

  /// The Availability Zone in which to allocate the Dedicated Host.
  final Input<String> availabilityZone;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: <span pulumi-lang-nodejs="`on`" pulumi-lang-dotnet="`On`" pulumi-lang-go="`on`" pulumi-lang-python="`on`" pulumi-lang-yaml="`on`" pulumi-lang-java="`on`">`on`</span>, <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>. Default: <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>.
  final Input<String>? hostRecovery;

  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of <span pulumi-lang-nodejs="`instanceFamily`" pulumi-lang-dotnet="`InstanceFamily`" pulumi-lang-go="`instanceFamily`" pulumi-lang-python="`instance_family`" pulumi-lang-yaml="`instanceFamily`" pulumi-lang-java="`instanceFamily`">`instance_family`</span> or <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> must be specified.
  final Input<String>? instanceFamily;

  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of <span pulumi-lang-nodejs="`instanceFamily`" pulumi-lang-dotnet="`InstanceFamily`" pulumi-lang-go="`instanceFamily`" pulumi-lang-python="`instance_family`" pulumi-lang-yaml="`instanceFamily`" pulumi-lang-java="`instanceFamily`">`instance_family`</span> or <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> must be specified.
  final Input<String>? instanceType;

  /// The Amazon Resource Name (ARN) of the AWS Outpost on which to allocate the Dedicated Host.
  final Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DedicatedHostArgs({
    this.assetId,
    this.autoPlacement,
    required this.availabilityZone,
    this.hostRecovery,
    this.instanceFamily,
    this.instanceType,
    this.outpostArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetIdValue = assetId;
    if (assetIdValue != null) {
      map['assetId'] = assetIdValue;
    }
    final autoPlacementValue = autoPlacement;
    if (autoPlacementValue != null) {
      map['autoPlacement'] = autoPlacementValue;
    }
    map['availabilityZone'] = availabilityZone;
    final hostRecoveryValue = hostRecovery;
    if (hostRecoveryValue != null) {
      map['hostRecovery'] = hostRecoveryValue;
    }
    final instanceFamilyValue = instanceFamily;
    if (instanceFamilyValue != null) {
      map['instanceFamily'] = instanceFamilyValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
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

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      assetId: Input.asOptionalInput<String>(map['assetId']),
      autoPlacement: Input.asOptionalInput<String>(map['autoPlacement']),
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      hostRecovery: Input.asOptionalInput<String>(map['hostRecovery']),
      instanceFamily: Input.asOptionalInput<String>(map['instanceFamily']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
