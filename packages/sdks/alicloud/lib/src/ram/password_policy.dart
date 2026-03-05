import 'package:pulumi/pulumi.dart' as pulumi;
import 'password_policy_args.dart';
import 'password_policy_state.dart';

/// ## Import
///
/// RAM Password Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/passwordPolicy:PasswordPolicy example <id>.
/// ```
class PasswordPolicy extends pulumi.CustomResource {
  /// Whether to restrict logon after the password expires. Value:
  /// - true: After the password expires, you cannot log in to the console. You must reset the password of the RAM user through the main account or a RAM user with administrator permissions to log on normally.
  /// - false (default): After the password expires, the RAM user can change the password and log on normally.
  late final pulumi.Output<bool?> hardExpiry;
  /// Password retry constraint. After entering the wrong password continuously for the set number of times, the account will be locked for one hour.
  /// Value range: 0~32.
  /// Default value: 0, which means that the password retry constraint is not enabled.
  late final pulumi.Output<int?> maxLoginAttemps;
  /// Password validity period.
  /// Value range: 0~1095. Unit: days.
  /// Default value: 0, which means never expires.
  late final pulumi.Output<int?> maxPasswordAge;
  /// The minimum number of unique characters in the password.
  /// Valid values: 0 to 8.
  /// The default value is 0, which indicates that no limits are imposed on the number of unique characters in a password.
  late final pulumi.Output<int?> minimumPasswordDifferentCharacter;
  /// The minimum number of characters in the password.
  /// Valid values: 8 to 32. Default value: 8.
  late final pulumi.Output<int> minimumPasswordLength;
  /// Whether the user name is not allowed in the password. Value:
  /// - true: The password cannot contain the user name.
  /// - false (default): The user name can be included in the password.
  late final pulumi.Output<bool?> passwordNotContainUserName;
  /// Historical password check policy.
  /// Do not use the previous N Passwords. The value range of N is 0 to 24.
  /// Default value: 0, indicating that the historical password check policy is not enabled.
  late final pulumi.Output<int?> passwordReusePrevention;
  /// Specifies whether the password must contain lowercase letters. Valid values:
  /// - true
  /// - false (default)
  late final pulumi.Output<bool?> requireLowercaseCharacters;
  /// Specifies whether the password must contain digits. Valid values:
  /// - true
  /// - false (default)
  late final pulumi.Output<bool?> requireNumbers;
  /// Specifies whether the password must contain special characters. Valid values:
  /// - true
  /// - false (default)
  late final pulumi.Output<bool?> requireSymbols;
  /// Specifies whether the password must contain uppercase letters. Valid values:
  /// - true
  /// - false (default)
  late final pulumi.Output<bool?> requireUppercaseCharacters;

  /// Creates a new [PasswordPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PasswordPolicy]. {@macro pulumi_ram_password_policy_password_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PasswordPolicy(
    String name, {
    PasswordPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/passwordPolicy:PasswordPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hardExpiry = registerOutput<bool?>('hardExpiry');
    maxLoginAttemps = registerOutput<int?>('maxLoginAttemps');
    maxPasswordAge = registerOutput<int?>('maxPasswordAge');
    minimumPasswordDifferentCharacter = registerOutput<int?>('minimumPasswordDifferentCharacter');
    minimumPasswordLength = registerOutput<int>('minimumPasswordLength');
    passwordNotContainUserName = registerOutput<bool?>('passwordNotContainUserName');
    passwordReusePrevention = registerOutput<int?>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool?>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool?>('requireNumbers');
    requireSymbols = registerOutput<bool?>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool?>('requireUppercaseCharacters');
  }

  /// Gets an existing [PasswordPolicy] resource's state with the given [name] and [id].
  static PasswordPolicy get(
    String name,
    pulumi.Input<String> id, {
    PasswordPolicyState? state,
  }) {
    return PasswordPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PasswordPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/passwordPolicy:PasswordPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hardExpiry = registerOutput<bool?>('hardExpiry');
    maxLoginAttemps = registerOutput<int?>('maxLoginAttemps');
    maxPasswordAge = registerOutput<int?>('maxPasswordAge');
    minimumPasswordDifferentCharacter = registerOutput<int?>('minimumPasswordDifferentCharacter');
    minimumPasswordLength = registerOutput<int>('minimumPasswordLength');
    passwordNotContainUserName = registerOutput<bool?>('passwordNotContainUserName');
    passwordReusePrevention = registerOutput<int?>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool?>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool?>('requireNumbers');
    requireSymbols = registerOutput<bool?>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool?>('requireUppercaseCharacters');
  }
}
