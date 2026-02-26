// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecretVersion.
class SecretVersionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies binary data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretString`" pulumi-lang-dotnet="`SecretString`" pulumi-lang-go="`secretString`" pulumi-lang-python="`secret_string`" pulumi-lang-yaml="`secretString`" pulumi-lang-java="`secretString`">`secret_string`</span> or <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is not set. Needs to be encoded to base64.
  final Input<String>? secretBinary;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final Input<String> secretId;

  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretBinary`" pulumi-lang-dotnet="`SecretBinary`" pulumi-lang-go="`secretBinary`" pulumi-lang-python="`secret_binary`" pulumi-lang-yaml="`secretBinary`" pulumi-lang-java="`secretBinary`">`secret_binary`</span> or <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is not set.
  final Input<String>? secretString;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretBinary`" pulumi-lang-dotnet="`SecretBinary`" pulumi-lang-go="`secretBinary`" pulumi-lang-python="`secret_binary`" pulumi-lang-yaml="`secretBinary`" pulumi-lang-java="`secretBinary`">`secret_binary`</span> or <span pulumi-lang-nodejs="`secretString`" pulumi-lang-dotnet="`SecretString`" pulumi-lang-go="`secretString`" pulumi-lang-python="`secret_string`" pulumi-lang-yaml="`secretString`" pulumi-lang-java="`secretString`">`secret_string`</span> is not set.
  final Input<String>? secretStringWo;

  /// Used together with <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is required.
  final Input<int>? secretStringWoVersion;

  /// Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// > **NOTE:** If <span pulumi-lang-nodejs="`versionStages`" pulumi-lang-dotnet="`VersionStages`" pulumi-lang-go="`versionStages`" pulumi-lang-python="`version_stages`" pulumi-lang-yaml="`versionStages`" pulumi-lang-java="`versionStages`">`version_stages`</span> is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  final Input<List<String>>? versionStages;

  SecretVersionArgs({
    this.region,
    this.secretBinary,
    required this.secretId,
    this.secretString,
    this.secretStringWo,
    this.secretStringWoVersion,
    this.versionStages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretBinaryValue = secretBinary;
    if (secretBinaryValue != null) {
      map['secretBinary'] = secretBinaryValue;
    }
    map['secretId'] = secretId;
    final secretStringValue = secretString;
    if (secretStringValue != null) {
      map['secretString'] = secretStringValue;
    }
    final secretStringWoValue = secretStringWo;
    if (secretStringWoValue != null) {
      map['secretStringWo'] = secretStringWoValue;
    }
    final secretStringWoVersionValue = secretStringWoVersion;
    if (secretStringWoVersionValue != null) {
      map['secretStringWoVersion'] = secretStringWoVersionValue;
    }
    final versionStagesValue = versionStages;
    if (versionStagesValue != null) {
      map['versionStages'] = versionStagesValue;
    }
    return map;
  }

  factory SecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return SecretVersionArgs(
      region: Input.asOptionalInput<String>(map['region']),
      secretBinary: Input.asOptionalInput<String>(map['secretBinary']),
      secretId: Input.asInput<String>(map['secretId']),
      secretString: Input.asOptionalInput<String>(map['secretString']),
      secretStringWo: Input.asOptionalInput<String>(map['secretStringWo']),
      secretStringWoVersion:
          Input.asOptionalInput<int>(map['secretStringWoVersion']),
      versionStages: Input.asOptionalInput<List<String>>(map['versionStages']),
    );
  }
}
