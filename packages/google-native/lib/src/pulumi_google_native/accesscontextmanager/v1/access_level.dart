import 'package:pulumi/pulumi.dart';
import 'access_level_args.dart';
import 'basic_level_response.dart';
import 'custom_level_response.dart';

/// Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.
class AccessLevel extends CustomResource {
  late final Output<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  late final Output<BasicLevelResponse> basic;

  /// A `CustomLevel` written in the Common Expression Language.
  late final Output<CustomLevelResponse> custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  late final Output<String> description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  late final Output<String> name;

  /// Human readable title. Must be unique within the Policy.
  late final Output<String> title;

  AccessLevel(
    String name, {
    AccessLevelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1:AccessLevel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.basic = registerOutput<BasicLevelResponse>('basic');
    this.custom = registerOutput<CustomLevelResponse>('custom');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.title = registerOutput<String>('title');
  }
}
