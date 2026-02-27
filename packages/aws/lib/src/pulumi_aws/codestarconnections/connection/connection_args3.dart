// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Connection.
class ConnectionArgs3 {
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  final Input<String>? hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  final Input<String>? name;

  /// The name of the external provider where your third-party code repository is configured. Valid values are `Bitbucket`, `GitHub`, `GitHubEnterpriseServer`, `GitLab` or `GitLabSelfManaged`. Changing `provider_type` will create a new resource. Conflicts with `host_arn`
  final Input<String>? providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ConnectionArgs3({
    this.hostArn,
    this.name,
    this.providerType,
    this.region,
    this.tags,
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
    return map;
  }

  factory ConnectionArgs3.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs3(
      hostArn: Input.asOptionalInput<String>(map['hostArn']),
      name: Input.asOptionalInput<String>(map['name']),
      providerType: Input.asOptionalInput<String>(map['providerType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
