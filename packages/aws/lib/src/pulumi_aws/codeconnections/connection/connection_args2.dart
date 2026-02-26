// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_timeouts/connection_timeouts.dart';

/// The set of arguments for Connection.
class ConnectionArgs2 {
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with <span pulumi-lang-nodejs="`providerType`" pulumi-lang-dotnet="`ProviderType`" pulumi-lang-go="`providerType`" pulumi-lang-python="`provider_type`" pulumi-lang-yaml="`providerType`" pulumi-lang-java="`providerType`">`provider_type`</span>
  final Input<String>? hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> will create a new resource.
  final Input<String>? name;

  /// The name of the external provider where your third-party code repository is configured. Changing <span pulumi-lang-nodejs="`providerType`" pulumi-lang-dotnet="`ProviderType`" pulumi-lang-go="`providerType`" pulumi-lang-python="`provider_type`" pulumi-lang-yaml="`providerType`" pulumi-lang-java="`providerType`">`provider_type`</span> will create a new resource. Conflicts with <span pulumi-lang-nodejs="`hostArn`" pulumi-lang-dotnet="`HostArn`" pulumi-lang-go="`hostArn`" pulumi-lang-python="`host_arn`" pulumi-lang-yaml="`hostArn`" pulumi-lang-java="`hostArn`">`host_arn`</span>.
  final Input<String>? providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ConnectionTimeouts>? timeouts;

  ConnectionArgs2({
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
      map['timeouts'] =
          Input.mapOptionalInputValue<ConnectionTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs2(
      hostArn: Input.asOptionalInput<String>(map['hostArn']),
      name: Input.asOptionalInput<String>(map['name']),
      providerType: Input.asOptionalInput<String>(map['providerType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ConnectionTimeouts>(map['timeouts']),
    );
  }
}
