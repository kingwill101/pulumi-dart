// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNScanEc2InstanceWithFindingsConfiguration
class CFNScanEc2InstanceWithFindingsConfiguration {
  /// Property ebsVolumes
  final pulumi.Input<bool>? ebsVolumes;

  /// Creates a new [CFNScanEc2InstanceWithFindingsConfiguration].
  /// [ebsVolumes] Property ebsVolumes
  CFNScanEc2InstanceWithFindingsConfiguration({
    this.ebsVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsVolumes': ?ebsVolumes,
    };
  }

  factory CFNScanEc2InstanceWithFindingsConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNScanEc2InstanceWithFindingsConfiguration(
      ebsVolumes: map['ebsVolumes'] == null ? null : (map['ebsVolumes'] as bool).input(),
    );
  }
}

