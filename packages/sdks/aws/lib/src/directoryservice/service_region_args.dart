// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_region_vpc_settings.dart';

/// {@template pulumi_directoryservice_service_region_service_region_args_doc}
/// The set of arguments for ServiceRegion.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_service_region_service_region_args_doc}
class ServiceRegionArgs {
  /// The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  final pulumi.Input<int>? desiredNumberOfDomainControllers;
  /// The identifier of the directory to which you want to add Region replication.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the Region where you want to add domain controllers for replication.
  final pulumi.Input<String> regionName;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC information in the replicated Region. Detailed below.
  final pulumi.Input<ServiceRegionVpcSettings> vpcSettings;

  /// Creates a new [ServiceRegionArgs].
  /// [desiredNumberOfDomainControllers] The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  /// [directoryId] The identifier of the directory to which you want to add Region replication.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionName] The name of the Region where you want to add domain controllers for replication.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSettings] VPC information in the replicated Region. Detailed below.
  ServiceRegionArgs({
    this.desiredNumberOfDomainControllers,
    required this.directoryId,
    this.region,
    required this.regionName,
    this.tags,
    required this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredNumberOfDomainControllers': ?desiredNumberOfDomainControllers,
      'directoryId': directoryId,
      'region': ?region,
      'regionName': regionName,
      'tags': ?tags,
      'vpcSettings': pulumi.Input.mapInputValue<ServiceRegionVpcSettings, Map<String, dynamic>>(vpcSettings, (value) => value.toMap()),
    };
  }

  factory ServiceRegionArgs.fromMap(Map<String, dynamic> map) {
    return ServiceRegionArgs(
      desiredNumberOfDomainControllers: (() { final guardedValue = map['desiredNumberOfDomainControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcSettings: pulumi.Input.fromValue(ServiceRegionVpcSettings.fromMap((map['vpcSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

