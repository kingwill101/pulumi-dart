import 'package:pulumi/pulumi.dart' hide Config;
import 'access_level_args2.dart';
import 'basic_level_response2.dart';
import 'custom_level_response2.dart';

/// Create an Access Level. The longrunning operation from this RPC will have a successful status once the Access Level has propagated to long-lasting storage. Access Levels containing errors will result in an error response for the first error encountered.
class AccessLevel2 extends CustomResource {
  late final Output<String> accessPolicyId;

  /// A `BasicLevel` composed of `Conditions`.
  late final Output<BasicLevelResponse2> basic;

  /// A `CustomLevel` written in the Common Expression Language.
  late final Output<CustomLevelResponse2> custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  late final Output<String> description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  late final Output<String> name;

  /// Human readable title. Must be unique within the Policy.
  late final Output<String> title;

  AccessLevel2(
    String name, {
    AccessLevelArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1beta:AccessLevel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.basic = registerOutput<BasicLevelResponse2>('basic');
    this.custom = registerOutput<CustomLevelResponse2>('custom');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.title = registerOutput<String>('title');
  }
}
