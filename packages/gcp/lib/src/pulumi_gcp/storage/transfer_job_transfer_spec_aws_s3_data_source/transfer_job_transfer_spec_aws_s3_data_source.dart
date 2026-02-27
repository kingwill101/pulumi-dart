// ignore_for_file: unused_element, unnecessary_cast

import '../transfer_job_transfer_spec_aws_s3_data_source_aws_access_key/transfer_job_transfer_spec_aws_s3_data_source_aws_access_key.dart';

class TransferJobTransferSpecAwsS3DataSource {
  /// AWS credentials block.
  final TransferJobTransferSpecAwsS3DataSourceAwsAccessKey? awsAccessKey;

  /// S3 Bucket name.
  final String bucketName;

  /// The CloudFront distribution domain name pointing to this bucket, to use when fetching. See [Transfer from S3 via CloudFront](https://cloud.google.com/storage-transfer/docs/s3-cloudfront) for more information. Format: https://{id}.cloudfront.net or any valid custom domain. Must begin with https://.
  final String? cloudfrontDomain;

  /// The Resource name of a secret in Secret Manager. AWS credentials must be stored in Secret Manager in JSON format. If credentials_secret is specified, do not specify role_arn or aws_access_key. Format: projects/{projectNumber}/secrets/{secret_name}.
  final String? credentialsSecret;

  /// Egress bytes over a Google-managed private network. This network is shared between other users of Storage Transfer Service.
  final bool? managedPrivateNetwork;

  /// S3 Bucket path in bucket to transfer.
  final String? path;

  /// The Amazon Resource Name (ARN) of the role to support temporary credentials via 'AssumeRoleWithWebIdentity'. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a 'AssumeRoleWithWebIdentity' call for the provided role using the [GoogleServiceAccount][] for this project.
  final String? roleArn;

  TransferJobTransferSpecAwsS3DataSource({
    this.awsAccessKey,
    required this.bucketName,
    this.cloudfrontDomain,
    this.credentialsSecret,
    this.managedPrivateNetwork,
    this.path,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccessKeyValue = awsAccessKey;
    if (awsAccessKeyValue != null) {
      map['awsAccessKey'] = awsAccessKeyValue.toMap();
    }
    map['bucketName'] = bucketName;
    final cloudfrontDomainValue = cloudfrontDomain;
    if (cloudfrontDomainValue != null) {
      map['cloudfrontDomain'] = cloudfrontDomainValue;
    }
    final credentialsSecretValue = credentialsSecret;
    if (credentialsSecretValue != null) {
      map['credentialsSecret'] = credentialsSecretValue;
    }
    final managedPrivateNetworkValue = managedPrivateNetwork;
    if (managedPrivateNetworkValue != null) {
      map['managedPrivateNetwork'] = managedPrivateNetworkValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory TransferJobTransferSpecAwsS3DataSource.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3DataSource(
      awsAccessKey: map['awsAccessKey'] == null
          ? null
          : TransferJobTransferSpecAwsS3DataSourceAwsAccessKey.fromMap(
              (map['awsAccessKey'] as Map).cast<String, dynamic>()),
      bucketName: map['bucketName'] as String,
      cloudfrontDomain: map['cloudfrontDomain'] == null
          ? null
          : map['cloudfrontDomain'] as String,
      credentialsSecret: map['credentialsSecret'] == null
          ? null
          : map['credentialsSecret'] as String,
      managedPrivateNetwork: map['managedPrivateNetwork'] == null
          ? null
          : map['managedPrivateNetwork'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}
