// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../namespace_timeouts/namespace_timeouts.dart';

/// The set of arguments for Namespace.
class NamespaceArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  final pulumi.Input<String>? identityStore;

  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<NamespaceTimeouts>? timeouts;

  NamespaceArgs({
    this.awsAccountId,
    this.identityStore,
    required this.namespace,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final identityStoreValue = identityStore;
    if (identityStoreValue != null) {
      map['identityStore'] = identityStoreValue;
    }
    map['namespace'] = namespace;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<NamespaceTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      identityStore: pulumi.Input.asOptionalInput<String>(map['identityStore']),
      namespace: pulumi.Input.asInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<NamespaceTimeouts>(map['timeouts']),
    );
  }
}
