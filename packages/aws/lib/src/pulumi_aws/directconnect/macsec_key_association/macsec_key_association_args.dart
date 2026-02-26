// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MacsecKeyAssociation.
class MacsecKeyAssociationArgs {
  /// The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span>.
  final Input<String>? cak;

  /// The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>.
  final Input<String>? ckn;

  /// The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  final Input<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// > **Note:** <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> and <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span> are mutually exclusive with <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span> - these arguments cannot be used together. If you use <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> and <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>, you should not use <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span>. If you use the <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span> argument to reference an existing MAC Security (MACSec) secret key, you should not use <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> or <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>.
  final Input<String>? secretArn;

  MacsecKeyAssociationArgs({
    this.cak,
    this.ckn,
    required this.connectionId,
    this.region,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cakValue = cak;
    if (cakValue != null) {
      map['cak'] = cakValue;
    }
    final cknValue = ckn;
    if (cknValue != null) {
      map['ckn'] = cknValue;
    }
    map['connectionId'] = connectionId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    return map;
  }

  factory MacsecKeyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MacsecKeyAssociationArgs(
      cak: Input.asOptionalInput<String>(map['cak']),
      ckn: Input.asOptionalInput<String>(map['ckn']),
      connectionId: Input.asInput<String>(map['connectionId']),
      region: Input.asOptionalInput<String>(map['region']),
      secretArn: Input.asOptionalInput<String>(map['secretArn']),
    );
  }
}
