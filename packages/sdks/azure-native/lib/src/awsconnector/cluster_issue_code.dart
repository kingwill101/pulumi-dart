/// Property value
enum ClusterIssueCode {
  accessDenied("AccessDenied"),
  clusterUnreachable("ClusterUnreachable"),
  configurationConflict("ConfigurationConflict"),
  ec2SecurityGroupNotFound("Ec2SecurityGroupNotFound"),
  ec2ServiceNotSubscribed("Ec2ServiceNotSubscribed"),
  ec2SubnetNotFound("Ec2SubnetNotFound"),
  iamRoleNotFound("IamRoleNotFound"),
  insufficientFreeAddresses("InsufficientFreeAddresses"),
  internalFailure("InternalFailure"),
  kmsGrantRevoked("KmsGrantRevoked"),
  kmsKeyDisabled("KmsKeyDisabled"),
  kmsKeyMarkedForDeletion("KmsKeyMarkedForDeletion"),
  kmsKeyNotFound("KmsKeyNotFound"),
  other("Other"),
  resourceLimitExceeded("ResourceLimitExceeded"),
  resourceNotFound("ResourceNotFound"),
  stsRegionalEndpointDisabled("StsRegionalEndpointDisabled"),
  unsupportedVersion("UnsupportedVersion"),
  vpcNotFound("VpcNotFound");

  const ClusterIssueCode(this.value);
  final String value;

  static ClusterIssueCode fromValue(String value) {
    for (final item in ClusterIssueCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterIssueCode value: $value');
  }
}

