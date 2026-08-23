// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_bucket_access_point_scope_scope.dart';

/// {@template pulumi_s3_control_directory_bucket_access_point_scope_directory_bucket_access_point_scope_args_doc}
/// The set of arguments for DirectoryBucketAccessPointScope.
/// {@endtemplate}
/// {@macro pulumi_s3_control_directory_bucket_access_point_scope_directory_bucket_access_point_scope_args_doc}
class DirectoryBucketAccessPointScopeArgs {
  /// AWS account ID that owns the specified access point.
  final pulumi.Input<String> accountId;
  /// Name of the access point that you want to apply the scope to.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  final pulumi.Input<DirectoryBucketAccessPointScopeScope> scope;

  /// Creates a new [DirectoryBucketAccessPointScopeArgs].
  /// [accountId] AWS account ID that owns the specified access point.
  /// [name] Name of the access point that you want to apply the scope to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  const DirectoryBucketAccessPointScopeArgs({
    required this.accountId,
    this.name,
    this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': ?name,
      'region': ?region,
      'scope': pulumi.Input.mapInputValue<DirectoryBucketAccessPointScopeScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory DirectoryBucketAccessPointScopeArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketAccessPointScopeArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(DirectoryBucketAccessPointScopeScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
