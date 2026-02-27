import 'package:pulumi/pulumi.dart' as pulumi;
import 'macsec_key_association_args.dart';

/// Provides a MAC Security (MACSec) secret key resource for use with Direct Connect. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for information about MAC Security (MACsec) prerequisites.
///
/// Creating this resource will also create a resource of type `aws.secretsmanager.Secret` which is managed by Direct Connect. While you can import this resource into your state, because this secret is managed by Direct Connect, you will not be able to make any modifications to it. See [How AWS Direct Connect uses AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/integrating_how-services-use-secrets_directconnect.html) for details.
///
/// > **Note:** All arguments including `ckn` and `cak` will be stored in the raw state as plain-text.
/// > **Note:** The `secret_arn` argument can only be used to reference a previously created MACSec key. You cannot associate a Secrets Manager secret created outside of the `aws.directconnect.MacsecKeyAssociation` resource.
///
/// ## Example Usage
///
/// ### Create MACSec key with CKN and CAK
///
///
///
/// ### Create MACSec key with existing Secrets Manager secret
class MacsecKeyAssociation extends pulumi.CustomResource {
  /// The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `ckn`.
  late final pulumi.Output<String?> cak;

  /// The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `cak`.
  late final pulumi.Output<String> ckn;

  /// The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  late final pulumi.Output<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// > **Note:** `ckn` and `cak` are mutually exclusive with `secret_arn` - these arguments cannot be used together. If you use `ckn` and `cak`, you should not use `secret_arn`. If you use the `secret_arn` argument to reference an existing MAC Security (MACSec) secret key, you should not use `ckn` or `cak`.
  late final pulumi.Output<String> secretArn;

  /// The date in UTC format that the MAC Security (MACsec) secret key takes effect.
  late final pulumi.Output<String> startOn;

  /// The state of the MAC Security (MACsec) secret key. The possible values are: associating, associated, disassociating, disassociated. See [MacSecKey](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_MacSecKey.html#DX-Type-MacSecKey-state) for descriptions of each state.
  late final pulumi.Output<String> state;

  MacsecKeyAssociation(
    String name, {
    MacsecKeyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/macsecKeyAssociation:MacsecKeyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cak = registerOutput<String?>('cak');
    this.ckn = registerOutput<String>('ckn');
    this.connectionId = registerOutput<String>('connectionId');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String>('secretArn');
    this.startOn = registerOutput<String>('startOn');
    this.state = registerOutput<String>('state');
  }
}
