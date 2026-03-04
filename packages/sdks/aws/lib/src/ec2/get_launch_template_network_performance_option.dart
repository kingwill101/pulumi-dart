// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateNetworkPerformanceOption {
  final pulumi.Input<String> bandwidthWeighting;

  /// Creates a new [GetLaunchTemplateNetworkPerformanceOption].
  /// [bandwidthWeighting] Required.
  GetLaunchTemplateNetworkPerformanceOption({required this.bandwidthWeighting});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bandwidthWeighting': bandwidthWeighting};
  }

  factory GetLaunchTemplateNetworkPerformanceOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateNetworkPerformanceOption(
      bandwidthWeighting: pulumi.Input.fromValue(
        map['bandwidthWeighting'] as String,
      ),
    );
  }
}
