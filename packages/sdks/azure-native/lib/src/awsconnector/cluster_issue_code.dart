import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ClusterIssueCode implements pulumi.PulumiEnum<String> {
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

  const ClusterIssueCode(this.wireValue);
  @override
  final String wireValue;

  static ClusterIssueCode fromValue(String value) {
    for (final item in ClusterIssueCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterIssueCode value: $value');
  }
}
