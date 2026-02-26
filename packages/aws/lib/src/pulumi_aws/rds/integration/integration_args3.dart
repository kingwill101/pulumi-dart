// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../integration_timeouts/integration_timeouts.dart';

/// The set of arguments for Integration.
class IntegrationArgs3 {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> parameter.
  final Input<Map<String, String>>? additionalEncryptionContext;

  /// Data filters for the integration.
  /// These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
  /// The value should match the syntax from the AWS CLI which includes an `include:` or `exclude:` prefix before a filter expression.
  /// Multiple expressions are separated by a comma.
  /// See the [Amazon RDS data filtering guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html) for additional details.
  final Input<String>? dataFilter;

  /// Name of the integration.
  final Input<String> integrationName;

  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, RDS uses a default AWS owned key.
  /// If you use the default AWS owned key, you should ignore <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> parameter by using <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> parameter to avoid unintended change after the first creation.
  final Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the database to use as the source for replication.
  final Input<String> sourceArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-integration.html).
  final Input<Map<String, String>>? tags;

  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  final Input<String> targetArn;
  final Input<IntegrationTimeouts>? timeouts;

  IntegrationArgs3({
    this.additionalEncryptionContext,
    this.dataFilter,
    required this.integrationName,
    this.kmsKeyId,
    this.region,
    required this.sourceArn,
    this.tags,
    required this.targetArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEncryptionContextValue = additionalEncryptionContext;
    if (additionalEncryptionContextValue != null) {
      map['additionalEncryptionContext'] = additionalEncryptionContextValue;
    }
    final dataFilterValue = dataFilter;
    if (dataFilterValue != null) {
      map['dataFilter'] = dataFilterValue;
    }
    map['integrationName'] = integrationName;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceArn'] = sourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetArn'] = targetArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<IntegrationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IntegrationArgs3.fromMap(Map<String, dynamic> map) {
    return IntegrationArgs3(
      additionalEncryptionContext: Input.asOptionalInput<Map<String, String>>(
          map['additionalEncryptionContext']),
      dataFilter: Input.asOptionalInput<String>(map['dataFilter']),
      integrationName: Input.asInput<String>(map['integrationName']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceArn: Input.asInput<String>(map['sourceArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetArn: Input.asInput<String>(map['targetArn']),
      timeouts: Input.asOptionalInput<IntegrationTimeouts>(map['timeouts']),
    );
  }
}
