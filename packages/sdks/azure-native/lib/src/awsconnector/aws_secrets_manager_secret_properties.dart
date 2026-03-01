// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generate_secret_string.dart';
import 'replica_region.dart';
import 'tag.dart';

/// Definition of awsSecretsManagerSecret
class AwsSecretsManagerSecretProperties {
  /// The description of the secret.
  final String? description;
  /// A structure that specifies how to generate a password to encrypt and store in the secret. To include a specific string in the secret, use ``SecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support. Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  *Required permissions:* ``secretsmanager:GetRandomPassword``. For more information, see [IAM policy actions for Secrets Manager](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions) and [Authentication and access control in Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
  final GenerateSecretString? generateSecretString;
  /// Property id
  final String? id;
  /// The ARN, key ID, or alias of the KMS key that Secrets Manager uses to encrypt the secret value in the secret. An alias is always prefixed by ``alias/``, for example ``alias/aws/secretsmanager``. For more information, see [About aliases](https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html). To use a KMS key in a different account, use the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager uses the key ``aws/secretsmanager``. If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it encrypts the secret value. If the secret is in a different AWS account from the credentials calling the API, then you can't use ``aws/secretsmanager`` to encrypt the secret, and you must create and use a customer managed KMS key.
  final String? kmsKeyId;
  /// The name of the new secret. The secret name can contain ASCII letters, numbers, and the following characters: /_+=.@- Do not end your secret name with a hyphen followed by six characters. If you do so, you risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager automatically adds a hyphen and six random characters after the secret name at the end of the ARN.
  final String? name;
  /// A custom type that specifies a ``Region`` and the ``KmsKeyId`` for a replica secret.
  final List<ReplicaRegion>? replicaRegions;
  /// The text to encrypt and store in the secret. We recommend you use a JSON structure of key/value pairs for your secret value. To generate a random password, use ``GenerateSecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created.
  final String? secretString;
  /// A list of tags to attach to the secret. Each tag is a key and value pair of strings in a JSON text string, for example:  ``[{'Key':'CostCenter','Value':'12345'},{'Key':'environment','Value':'production'}]``  Secrets Manager tag key names are case sensitive. A tag with the key 'ABC' is a different tag from one with key 'abc'. Stack-level tags, tags you apply to the CloudFormation stack, are also attached to the secret.  If you check tags in permissions policies as part of your security strategy, then adding or removing a tag can change permissions. If the completion of this operation would result in you losing your permissions for this secret, then Secrets Manager blocks the operation and returns an ``Access Denied`` error. For more information, see [Control access to secrets using tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac) and [Limit access to identities with tags that match secrets' tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2). For information about how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json). If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. The following restrictions apply to tags:  +  Maximum number of tags per secret: 50  +  Maximum key length: 127 Unicode characters in UTF-8  +  Maximum value length: 255 Unicode characters in UTF-8  +  Tag keys and values are case sensitive.  +  Do not use the ``aws:`` prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.  +  If you use your tagging schema across multiple services and resources, other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
  final List<Tag>? tags;

  /// Creates a new [AwsSecretsManagerSecretProperties].
  /// [description] The description of the secret.
  /// [generateSecretString] A structure that specifies how to generate a password to encrypt and store in the secret. To include a specific string in the secret, use ``SecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support. Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  *Required permissions:* ``secretsmanager:GetRandomPassword``. For more information, see [IAM policy actions for Secrets Manager](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions) and [Authentication and access control in Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
  /// [id] Property id
  /// [kmsKeyId] The ARN, key ID, or alias of the KMS key that Secrets Manager uses to encrypt the secret value in the secret. An alias is always prefixed by ``alias/``, for example ``alias/aws/secretsmanager``. For more information, see [About aliases](https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html). To use a KMS key in a different account, use the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager uses the key ``aws/secretsmanager``. If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it encrypts the secret value. If the secret is in a different AWS account from the credentials calling the API, then you can't use ``aws/secretsmanager`` to encrypt the secret, and you must create and use a customer managed KMS key.
  /// [name] The name of the new secret. The secret name can contain ASCII letters, numbers, and the following characters: /_+=.@- Do not end your secret name with a hyphen followed by six characters. If you do so, you risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager automatically adds a hyphen and six random characters after the secret name at the end of the ARN.
  /// [replicaRegions] A custom type that specifies a ``Region`` and the ``KmsKeyId`` for a replica secret.
  /// [secretString] The text to encrypt and store in the secret. We recommend you use a JSON structure of key/value pairs for your secret value. To generate a random password, use ``GenerateSecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created.
  /// [tags] A list of tags to attach to the secret. Each tag is a key and value pair of strings in a JSON text string, for example:  ``[{'Key':'CostCenter','Value':'12345'},{'Key':'environment','Value':'production'}]``  Secrets Manager tag key names are case sensitive. A tag with the key 'ABC' is a different tag from one with key 'abc'. Stack-level tags, tags you apply to the CloudFormation stack, are also attached to the secret.  If you check tags in permissions policies as part of your security strategy, then adding or removing a tag can change permissions. If the completion of this operation would result in you losing your permissions for this secret, then Secrets Manager blocks the operation and returns an ``Access Denied`` error. For more information, see [Control access to secrets using tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac) and [Limit access to identities with tags that match secrets' tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2). For information about how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json). If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. The following restrictions apply to tags:  +  Maximum number of tags per secret: 50  +  Maximum key length: 127 Unicode characters in UTF-8  +  Maximum value length: 255 Unicode characters in UTF-8  +  Tag keys and values are case sensitive.  +  Do not use the ``aws:`` prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.  +  If you use your tagging schema across multiple services and resources, other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
  AwsSecretsManagerSecretProperties({
    this.description,
    this.generateSecretString,
    this.id,
    this.kmsKeyId,
    this.name,
    this.replicaRegions,
    this.secretString,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'generateSecretString': ?generateSecretString == null ? null : generateSecretString!.toMap(),
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'replicaRegions': ?replicaRegions == null ? null : pulumi.Input.encodeList<ReplicaRegion, Map<String, dynamic>>(replicaRegions!, (value) => value.toMap()),
      'secretString': ?secretString,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsSecretsManagerSecretProperties.fromMap(Map<String, dynamic> map) {
    return AwsSecretsManagerSecretProperties(
      description: map['description'] == null ? null : map['description'] as String,
      generateSecretString: map['generateSecretString'] == null ? null : GenerateSecretString.fromMap((map['generateSecretString'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      replicaRegions: map['replicaRegions'] == null ? null : pulumi.Input.decodeList<ReplicaRegion>(map['replicaRegions'], (value) => ReplicaRegion.fromMap((value as Map).cast<String, dynamic>())),
      secretString: map['secretString'] == null ? null : map['secretString'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

