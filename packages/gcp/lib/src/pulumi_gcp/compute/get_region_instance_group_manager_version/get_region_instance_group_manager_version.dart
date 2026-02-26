// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_group_manager_version_target_size/get_region_instance_group_manager_version_target_size.dart';

class GetRegionInstanceGroupManagerVersion {
  /// The full URL to an instance template from which all new instances of this version will be created.
  final String instanceTemplate;

  /// The name of the instance group. Either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> must be provided.
  final String name;

  /// The number of instances calculated as a fixed number or a percentage depending on the settings.
  final List<GetRegionInstanceGroupManagerVersionTargetSize> targetSizes;

  GetRegionInstanceGroupManagerVersion({
    required this.instanceTemplate,
    required this.name,
    required this.targetSizes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    map['name'] = name;
    map['targetSizes'] = Input.encodeList<
        GetRegionInstanceGroupManagerVersionTargetSize,
        Map<String, dynamic>>(targetSizes, (value) => value.toMap());
    return map;
  }

  factory GetRegionInstanceGroupManagerVersion.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerVersion(
      instanceTemplate: map['instanceTemplate'] as String,
      name: map['name'] as String,
      targetSizes:
          Input.decodeList<GetRegionInstanceGroupManagerVersionTargetSize>(
              map['targetSizes'],
              (value) => GetRegionInstanceGroupManagerVersionTargetSize.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
