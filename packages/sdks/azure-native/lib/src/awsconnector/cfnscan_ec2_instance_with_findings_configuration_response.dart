// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNScanEc2InstanceWithFindingsConfiguration
class CFNScanEc2InstanceWithFindingsConfigurationResponse {
  /// Property ebsVolumes
  final pulumi.Input<bool?>? ebsVolumes;

  /// Creates a new [CFNScanEc2InstanceWithFindingsConfigurationResponse].
  /// [ebsVolumes] Property ebsVolumes
  const CFNScanEc2InstanceWithFindingsConfigurationResponse({
    this.ebsVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsVolumes': ?ebsVolumes,
    };
  }

  factory CFNScanEc2InstanceWithFindingsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNScanEc2InstanceWithFindingsConfigurationResponse(
      ebsVolumes: (() { final guardedValue = map['ebsVolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
