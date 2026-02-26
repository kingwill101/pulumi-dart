// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_network_resource_association_timeouts/service_network_resource_association_timeouts.dart';

/// The set of arguments for ServiceNetworkResourceAssociation.
class ServiceNetworkResourceAssociationArgs {
  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the resource configuration identified by <span pulumi-lang-nodejs="`resourceConfigurationIdentifier`" pulumi-lang-dotnet="`ResourceConfigurationIdentifier`" pulumi-lang-go="`resourceConfigurationIdentifier`" pulumi-lang-python="`resource_configuration_identifier`" pulumi-lang-yaml="`resourceConfigurationIdentifier`" pulumi-lang-java="`resourceConfigurationIdentifier`">`resource_configuration_identifier`</span> must have a custom domain name or a group domain for private DNS.
  final Input<bool>? privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of Resource Configuration to associate to the Service Network.
  final Input<String> resourceConfigurationIdentifier;

  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  final Input<String> serviceNetworkIdentifier;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ServiceNetworkResourceAssociationTimeouts>? timeouts;

  ServiceNetworkResourceAssociationArgs({
    this.privateDnsEnabled,
    this.region,
    required this.resourceConfigurationIdentifier,
    required this.serviceNetworkIdentifier,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateDnsEnabledValue = privateDnsEnabled;
    if (privateDnsEnabledValue != null) {
      map['privateDnsEnabled'] = privateDnsEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceConfigurationIdentifier'] = resourceConfigurationIdentifier;
    map['serviceNetworkIdentifier'] = serviceNetworkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          ServiceNetworkResourceAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceNetworkResourceAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationArgs(
      privateDnsEnabled: Input.asOptionalInput<bool>(map['privateDnsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceConfigurationIdentifier:
          Input.asInput<String>(map['resourceConfigurationIdentifier']),
      serviceNetworkIdentifier:
          Input.asInput<String>(map['serviceNetworkIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<ServiceNetworkResourceAssociationTimeouts>(
              map['timeouts']),
    );
  }
}
