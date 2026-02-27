// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_endpoint_options/domain_endpoint_options.dart';
import '../domain_index_field/domain_index_field.dart';
import '../domain_scaling_parameters/domain_scaling_parameters.dart';

/// The set of arguments for Domain.
class DomainArgs {
  /// Domain endpoint options. Documented below.
  final pulumi.Input<DomainEndpointOptions>? endpointOptions;

  /// The index fields for documents added to the domain. Documented below.
  final pulumi.Input<List<DomainIndexField>>? indexFields;

  /// Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  final pulumi.Input<bool>? multiAz;

  /// The name of the CloudSearch domain.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Domain scaling parameters. Documented below.
  final pulumi.Input<DomainScalingParameters>? scalingParameters;

  DomainArgs({
    this.endpointOptions,
    this.indexFields,
    this.multiAz,
    this.name,
    this.region,
    this.scalingParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointOptionsValue = endpointOptions;
    if (endpointOptionsValue != null) {
      map['endpointOptions'] = pulumi.Input.mapOptionalInputValue<
          DomainEndpointOptions,
          Map<String, dynamic>>(endpointOptionsValue, (value) => value.toMap());
    }
    final indexFieldsValue = indexFields;
    if (indexFieldsValue != null) {
      map['indexFields'] = pulumi.Input.mapOptionalInputValue<
              List<DomainIndexField>, List<Map<String, dynamic>>>(
          indexFieldsValue,
          (value) =>
              pulumi.Input.encodeList<DomainIndexField, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final multiAzValue = multiAz;
    if (multiAzValue != null) {
      map['multiAz'] = multiAzValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingParametersValue = scalingParameters;
    if (scalingParametersValue != null) {
      map['scalingParameters'] = pulumi.Input.mapOptionalInputValue<
              DomainScalingParameters, Map<String, dynamic>>(
          scalingParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      endpointOptions: pulumi.Input.asOptionalInput<DomainEndpointOptions>(
          map['endpointOptions']),
      indexFields: pulumi.Input.asOptionalInput<List<DomainIndexField>>(
          map['indexFields']),
      multiAz: pulumi.Input.asOptionalInput<bool>(map['multiAz']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scalingParameters: pulumi.Input.asOptionalInput<DomainScalingParameters>(
          map['scalingParameters']),
    );
  }
}
