// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_region_vpc_settings/service_region_vpc_settings.dart';

/// The set of arguments for ServiceRegion.
class ServiceRegionArgs {
  /// The number of domain controllers desired in the replicated directory. Minimum value of <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>.
  final Input<int>? desiredNumberOfDomainControllers;

  /// The identifier of the directory to which you want to add Region replication.
  final Input<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the Region where you want to add domain controllers for replication.
  final Input<String> regionName;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// VPC information in the replicated Region. Detailed below.
  final Input<ServiceRegionVpcSettings> vpcSettings;

  ServiceRegionArgs({
    this.desiredNumberOfDomainControllers,
    required this.directoryId,
    this.region,
    required this.regionName,
    this.tags,
    required this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredNumberOfDomainControllersValue =
        desiredNumberOfDomainControllers;
    if (desiredNumberOfDomainControllersValue != null) {
      map['desiredNumberOfDomainControllers'] =
          desiredNumberOfDomainControllersValue;
    }
    map['directoryId'] = directoryId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['regionName'] = regionName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcSettings'] =
        Input.mapInputValue<ServiceRegionVpcSettings, Map<String, dynamic>>(
            vpcSettings, (value) => value.toMap());
    return map;
  }

  factory ServiceRegionArgs.fromMap(Map<String, dynamic> map) {
    return ServiceRegionArgs(
      desiredNumberOfDomainControllers:
          Input.asOptionalInput<int>(map['desiredNumberOfDomainControllers']),
      directoryId: Input.asInput<String>(map['directoryId']),
      region: Input.asOptionalInput<String>(map['region']),
      regionName: Input.asInput<String>(map['regionName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSettings: Input.asInput<ServiceRegionVpcSettings>(map['vpcSettings']),
    );
  }
}
