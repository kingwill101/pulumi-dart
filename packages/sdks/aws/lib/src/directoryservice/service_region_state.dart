// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_region_vpc_settings.dart';

/// Input properties used for looking up and filtering ServiceRegion resources.
class ServiceRegionState {
  /// The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  final pulumi.Input<int>? desiredNumberOfDomainControllers;
  /// The identifier of the directory to which you want to add Region replication.
  final pulumi.Input<String>? directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the Region where you want to add domain controllers for replication.
  final pulumi.Input<String>? regionName;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// VPC information in the replicated Region. Detailed below.
  final pulumi.Input<ServiceRegionVpcSettings>? vpcSettings;

  /// Creates a new [ServiceRegionState].
  /// [desiredNumberOfDomainControllers] The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  /// [directoryId] The identifier of the directory to which you want to add Region replication.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionName] The name of the Region where you want to add domain controllers for replication.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcSettings] VPC information in the replicated Region. Detailed below.
  ServiceRegionState({
    pulumi.Output<int>? desiredNumberOfDomainControllers,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? regionName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ServiceRegionVpcSettings>? vpcSettings,
  }) :
      desiredNumberOfDomainControllers = pulumi.Input.asOptionalInput<int>(desiredNumberOfDomainControllers),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionName = pulumi.Input.asOptionalInput<String>(regionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcSettings = pulumi.Input.asOptionalInput<ServiceRegionVpcSettings>(vpcSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredNumberOfDomainControllers': ?desiredNumberOfDomainControllers,
      'directoryId': ?directoryId,
      'region': ?region,
      'regionName': ?regionName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcSettings': ?pulumi.Input.mapOptionalInputValue<ServiceRegionVpcSettings, Map<String, dynamic>>(vpcSettings, (value) => value.toMap()),
    };
  }

  factory ServiceRegionState.fromMap(Map<String, dynamic> map) {
    return ServiceRegionState(
      desiredNumberOfDomainControllers: map['desiredNumberOfDomainControllers'] == null ? null : pulumi.Output.create<int>(map['desiredNumberOfDomainControllers'] as int),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionName: map['regionName'] == null ? null : pulumi.Output.create<String>(map['regionName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcSettings: map['vpcSettings'] == null ? null : pulumi.Output.create<ServiceRegionVpcSettings>(ServiceRegionVpcSettings.fromMap((map['vpcSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

