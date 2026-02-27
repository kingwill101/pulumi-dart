// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_timeouts/connection_timeouts.dart';

/// The set of arguments for Connection.
class ConnectionCodeconnectionsArgs {
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  final pulumi.Input<String>? hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  final pulumi.Input<String>? name;

  /// The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  final pulumi.Input<String>? providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ConnectionTimeouts>? timeouts;

  ConnectionCodeconnectionsArgs({
    this.hostArn,
    this.name,
    this.providerType,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostArnValue = hostArn;
    if (hostArnValue != null) {
      map['hostArn'] = hostArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final providerTypeValue = providerType;
    if (providerTypeValue != null) {
      map['providerType'] = providerTypeValue;
    }
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ConnectionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionCodeconnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionCodeconnectionsArgs(
      hostArn: pulumi.Input.asOptionalInput<String>(map['hostArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      providerType: pulumi.Input.asOptionalInput<String>(map['providerType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ConnectionTimeouts>(map['timeouts']),
    );
  }
}
