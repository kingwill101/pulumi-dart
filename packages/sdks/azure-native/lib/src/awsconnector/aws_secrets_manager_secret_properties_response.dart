// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generate_secret_string_response.dart';
import 'replica_region_response.dart';
import 'tag_response.dart';

/// Definition of awsSecretsManagerSecret
class AwsSecretsManagerSecretPropertiesResponse {
  /// The description of the secret.
  final pulumi.Input<String>? description;
  /// A structure that specifies how to generate a password to encrypt and store in the secret. To include a specific string in the secret, use ``SecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support. Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  *Required permissions:* ``secretsmanager:GetRandomPassword``. For more information, see [IAM policy actions for Secrets Manager](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions) and [Authentication and access control in Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
  final pulumi.Input<GenerateSecretStringResponse>? generateSecretString;
  /// Property id
  final pulumi.Input<String>? id;
  /// The ARN, key ID, or alias of the KMS key that Secrets Manager uses to encrypt the secret value in the secret. An alias is always prefixed by ``alias/``, for example ``alias/aws/secretsmanager``. For more information, see [About aliases](https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html). To use a KMS key in a different account, use the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager uses the key ``aws/secretsmanager``. If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it encrypts the secret value. If the secret is in a different AWS account from the credentials calling the API, then you can't use ``aws/secretsmanager`` to encrypt the secret, and you must create and use a customer managed KMS key.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the new secret. The secret name can contain ASCII letters, numbers, and the following characters: /_+=.@- Do not end your secret name with a hyphen followed by six characters. If you do so, you risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager automatically adds a hyphen and six random characters after the secret name at the end of the ARN.
  final pulumi.Input<String>? name;
  /// A custom type that specifies a ``Region`` and the ``KmsKeyId`` for a replica secret.
  final pulumi.Input<List<ReplicaRegionResponse>>? replicaRegions;
  /// The text to encrypt and store in the secret. We recommend you use a JSON structure of key/value pairs for your secret value. To generate a random password, use ``GenerateSecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created.
  final pulumi.Input<String>? secretString;
  /// A list of tags to attach to the secret. Each tag is a key and value pair of strings in a JSON text string, for example:  ``[{'Key':'CostCenter','Value':'12345'},{'Key':'environment','Value':'production'}]``  Secrets Manager tag key names are case sensitive. A tag with the key 'ABC' is a different tag from one with key 'abc'. Stack-level tags, tags you apply to the CloudFormation stack, are also attached to the secret.  If you check tags in permissions policies as part of your security strategy, then adding or removing a tag can change permissions. If the completion of this operation would result in you losing your permissions for this secret, then Secrets Manager blocks the operation and returns an ``Access Denied`` error. For more information, see [Control access to secrets using tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac) and [Limit access to identities with tags that match secrets' tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2). For information about how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json). If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. The following restrictions apply to tags:  +  Maximum number of tags per secret: 50  +  Maximum key length: 127 Unicode characters in UTF-8  +  Maximum value length: 255 Unicode characters in UTF-8  +  Tag keys and values are case sensitive.  +  Do not use the ``aws:`` prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.  +  If you use your tagging schema across multiple services and resources, other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
  final pulumi.Input<List<TagResponse>>? tags;

  /// Creates a new [AwsSecretsManagerSecretPropertiesResponse].
  /// [description] The description of the secret.
  /// [generateSecretString] A structure that specifies how to generate a password to encrypt and store in the secret. To include a specific string in the secret, use ``SecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support. Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  *Required permissions:* ``secretsmanager:GetRandomPassword``. For more information, see [IAM policy actions for Secrets Manager](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awssecretsmanager.html#awssecretsmanager-actions-as-permissions) and [Authentication and access control in Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
  /// [id] Property id
  /// [kmsKeyId] The ARN, key ID, or alias of the KMS key that Secrets Manager uses to encrypt the secret value in the secret. An alias is always prefixed by ``alias/``, for example ``alias/aws/secretsmanager``. For more information, see [About aliases](https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html). To use a KMS key in a different account, use the key ARN or the alias ARN. If you don't specify this value, then Secrets Manager uses the key ``aws/secretsmanager``. If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it encrypts the secret value. If the secret is in a different AWS account from the credentials calling the API, then you can't use ``aws/secretsmanager`` to encrypt the secret, and you must create and use a customer managed KMS key.
  /// [name] The name of the new secret. The secret name can contain ASCII letters, numbers, and the following characters: /_+=.@- Do not end your secret name with a hyphen followed by six characters. If you do so, you risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager automatically adds a hyphen and six random characters after the secret name at the end of the ARN.
  /// [replicaRegions] A custom type that specifies a ``Region`` and the ``KmsKeyId`` for a replica secret.
  /// [secretString] The text to encrypt and store in the secret. We recommend you use a JSON structure of key/value pairs for your secret value. To generate a random password, use ``GenerateSecretString`` instead. If you omit both ``GenerateSecretString`` and ``SecretString``, you create an empty secret. When you make a change to this property, a new secret version is created.
  /// [tags] A list of tags to attach to the secret. Each tag is a key and value pair of strings in a JSON text string, for example:  ``[{'Key':'CostCenter','Value':'12345'},{'Key':'environment','Value':'production'}]``  Secrets Manager tag key names are case sensitive. A tag with the key 'ABC' is a different tag from one with key 'abc'. Stack-level tags, tags you apply to the CloudFormation stack, are also attached to the secret.  If you check tags in permissions policies as part of your security strategy, then adding or removing a tag can change permissions. If the completion of this operation would result in you losing your permissions for this secret, then Secrets Manager blocks the operation and returns an ``Access Denied`` error. For more information, see [Control access to secrets using tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac) and [Limit access to identities with tags that match secrets' tags](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2). For information about how to format a JSON parameter for the various command line tool environments, see [Using JSON for Parameters](https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json). If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. The following restrictions apply to tags:  +  Maximum number of tags per secret: 50  +  Maximum key length: 127 Unicode characters in UTF-8  +  Maximum value length: 255 Unicode characters in UTF-8  +  Tag keys and values are case sensitive.  +  Do not use the ``aws:`` prefix in your tag names or values because AWS reserves it for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.  +  If you use your tagging schema across multiple services and resources, other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
  AwsSecretsManagerSecretPropertiesResponse({
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
      'generateSecretString': ?pulumi.Input.mapOptionalInputValue<GenerateSecretStringResponse, Map<String, dynamic>>(generateSecretString, (value) => value.toMap()),
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'replicaRegions': ?pulumi.Input.mapOptionalInputValue<List<ReplicaRegionResponse>, List<Map<String, dynamic>>>(replicaRegions, (value) => pulumi.Input.encodeList<ReplicaRegionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretString': ?secretString,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsSecretsManagerSecretPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSecretsManagerSecretPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generateSecretString: (() { final guardedValue = map['generateSecretString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenerateSecretStringResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaRegions: (() { final guardedValue = map['replicaRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicaRegionResponse>(guardedValue, (value) => ReplicaRegionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretString: (() { final guardedValue = map['secretString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

