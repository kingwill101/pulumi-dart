// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action/listener_default_action3.dart';

/// The set of arguments for Listener.
class ListenerArgs4 {
  /// Default action block for the default listener rule. Default action blocks are defined below.
  final Input<ListenerDefaultAction3> defaultAction;

  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final Input<String>? name;

  /// Listener port. You can specify a value from 1 to 65535. If <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not specified and <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is HTTP, the value will default to 80. If <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not specified and <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is HTTPS, the value will default to 443.
  final Input<int>? port;

  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  final Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span> arguments.
  final Input<String>? serviceArn;

  /// ID of the VPC Lattice service. You must include either the <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span> arguments.
  /// > **NOTE:** You must specify one of the following arguments: <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> or <span pulumi-lang-nodejs="`serviceIdentifier`" pulumi-lang-dotnet="`ServiceIdentifier`" pulumi-lang-go="`serviceIdentifier`" pulumi-lang-python="`service_identifier`" pulumi-lang-yaml="`serviceIdentifier`" pulumi-lang-java="`serviceIdentifier`">`service_identifier`</span>.
  final Input<String>? serviceIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ListenerArgs4({
    required this.defaultAction,
    this.name,
    this.port,
    required this.protocol,
    this.region,
    this.serviceArn,
    this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultAction'] =
        Input.mapInputValue<ListenerDefaultAction3, Map<String, dynamic>>(
            defaultAction, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceArnValue = serviceArn;
    if (serviceArnValue != null) {
      map['serviceArn'] = serviceArnValue;
    }
    final serviceIdentifierValue = serviceIdentifier;
    if (serviceIdentifierValue != null) {
      map['serviceIdentifier'] = serviceIdentifierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ListenerArgs4.fromMap(Map<String, dynamic> map) {
    return ListenerArgs4(
      defaultAction:
          Input.asInput<ListenerDefaultAction3>(map['defaultAction']),
      name: Input.asOptionalInput<String>(map['name']),
      port: Input.asOptionalInput<int>(map['port']),
      protocol: Input.asInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceArn: Input.asOptionalInput<String>(map['serviceArn']),
      serviceIdentifier:
          Input.asOptionalInput<String>(map['serviceIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
