// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServiceNetworkServiceAssociation.
class ServiceNetworkServiceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID or Amazon Resource Identifier (ARN) of the service.
  final pulumi.Input<String> serviceIdentifier;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  final pulumi.Input<String> serviceNetworkIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ServiceNetworkServiceAssociationArgs({
    this.region,
    required this.serviceIdentifier,
    required this.serviceNetworkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceIdentifier'] = serviceIdentifier;
    map['serviceNetworkIdentifier'] = serviceNetworkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServiceNetworkServiceAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkServiceAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceIdentifier: pulumi.Input.asInput<String>(map['serviceIdentifier']),
      serviceNetworkIdentifier:
          pulumi.Input.asInput<String>(map['serviceNetworkIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
