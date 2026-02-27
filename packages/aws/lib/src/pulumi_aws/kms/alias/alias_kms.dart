import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_kms_args.dart';

/// Provides an alias for a KMS customer master key. AWS Console enforces 1-to-1 mapping between aliases & keys,
/// but API (hence this provider too) allows you to create as many aliases as
/// the [account limits](http://docs.aws.amazon.com/kms/latest/developerguide/limits.html) allow you.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the KMS key alias.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import KMS aliases using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/alias:Alias a alias/my-key-alias
/// ```
class AliasKms extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the key alias.
  late final pulumi.Output<String> arn;

  /// The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  late final pulumi.Output<String> name;

  /// Creates an unique alias beginning with the specified prefix.
  /// The name must start with the word "alias" followed by a forward slash (alias/).  Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the target key identifier.
  late final pulumi.Output<String> targetKeyArn;

  /// Identifier for the key for which the alias is for, can be either an ARN or key_id.
  late final pulumi.Output<String> targetKeyId;

  AliasKms(
    String name, {
    AliasKmsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.targetKeyArn = registerOutput<String>('targetKeyArn');
    this.targetKeyId = registerOutput<String>('targetKeyId');
  }
}
