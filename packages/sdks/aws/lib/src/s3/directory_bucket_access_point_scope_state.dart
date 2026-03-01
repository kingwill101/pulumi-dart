// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_bucket_access_point_scope_scope.dart';

/// Input properties used for looking up and filtering DirectoryBucketAccessPointScope resources.
class DirectoryBucketAccessPointScopeState {
  /// The AWS account ID that owns the specified access point.
  final pulumi.Input<String>? accountId;
  /// The name of the access point that you want to apply the scope to.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  final pulumi.Input<DirectoryBucketAccessPointScopeScope>? scope;

  /// Creates a new [DirectoryBucketAccessPointScopeState].
  /// [accountId] The AWS account ID that owns the specified access point.
  /// [name] The name of the access point that you want to apply the scope to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  DirectoryBucketAccessPointScopeState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<DirectoryBucketAccessPointScopeScope>? scope,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asOptionalInput<DirectoryBucketAccessPointScopeScope>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'region': ?region,
      'scope': ?pulumi.Input.mapOptionalInputValue<DirectoryBucketAccessPointScopeScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory DirectoryBucketAccessPointScopeState.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketAccessPointScopeState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<DirectoryBucketAccessPointScopeScope>(DirectoryBucketAccessPointScopeScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
    );
  }
}

