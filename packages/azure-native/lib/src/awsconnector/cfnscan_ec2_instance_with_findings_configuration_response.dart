// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNScanEc2InstanceWithFindingsConfiguration
class CFNScanEc2InstanceWithFindingsConfigurationResponse {
  /// Property ebsVolumes
  final bool? ebsVolumes;

  /// Creates a new [CFNScanEc2InstanceWithFindingsConfigurationResponse].
  /// [ebsVolumes] Property ebsVolumes
  CFNScanEc2InstanceWithFindingsConfigurationResponse({
    this.ebsVolumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsVolumes': ?ebsVolumes,
    };
  }

  factory CFNScanEc2InstanceWithFindingsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNScanEc2InstanceWithFindingsConfigurationResponse(
      ebsVolumes: map['ebsVolumes'] == null ? null : map['ebsVolumes'] as bool,
    );
  }
}

