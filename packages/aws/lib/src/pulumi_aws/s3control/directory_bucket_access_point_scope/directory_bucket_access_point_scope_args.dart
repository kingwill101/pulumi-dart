// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_bucket_access_point_scope_scope/directory_bucket_access_point_scope_scope.dart';

/// The set of arguments for DirectoryBucketAccessPointScope.
class DirectoryBucketAccessPointScopeArgs {
  /// The AWS account ID that owns the specified access point.
  final pulumi.Input<String> accountId;

  /// The name of the access point that you want to apply the scope to.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// . Scope is used to restrict access to specific prefixes, API operations, or a combination of both. To remove the `scope`, set it to `{permissions=[] prefixes=[]}`. The default scope is `{permissions=[] prefixes=[]}`.
  final pulumi.Input<DirectoryBucketAccessPointScopeScope> scope;

  DirectoryBucketAccessPointScopeArgs({
    required this.accountId,
    this.name,
    this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scope'] = pulumi.Input.mapInputValue<
        DirectoryBucketAccessPointScopeScope,
        Map<String, dynamic>>(scope, (value) => value.toMap());
    return map;
  }

  factory DirectoryBucketAccessPointScopeArgs.fromMap(
      Map<String, dynamic> map) {
    return DirectoryBucketAccessPointScopeArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scope: pulumi.Input.asInput<DirectoryBucketAccessPointScopeScope>(
          map['scope']),
    );
  }
}
