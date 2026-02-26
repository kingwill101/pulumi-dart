// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_endpoint_options/domain_endpoint_options.dart';
import '../domain_index_field/domain_index_field.dart';
import '../domain_scaling_parameters/domain_scaling_parameters.dart';

/// The set of arguments for Domain.
class DomainArgs {
  /// Domain endpoint options. Documented below.
  final Input<DomainEndpointOptions>? endpointOptions;

  /// The index fields for documents added to the domain. Documented below.
  final Input<List<DomainIndexField>>? indexFields;

  /// Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  final Input<bool>? multiAz;

  /// The name of the CloudSearch domain.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Domain scaling parameters. Documented below.
  final Input<DomainScalingParameters>? scalingParameters;

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
      map['endpointOptions'] = Input.mapOptionalInputValue<
          DomainEndpointOptions,
          Map<String, dynamic>>(endpointOptionsValue, (value) => value.toMap());
    }
    final indexFieldsValue = indexFields;
    if (indexFieldsValue != null) {
      map['indexFields'] = Input.mapOptionalInputValue<List<DomainIndexField>,
              List<Map<String, dynamic>>>(
          indexFieldsValue,
          (value) => Input.encodeList<DomainIndexField, Map<String, dynamic>>(
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
      map['scalingParameters'] = Input.mapOptionalInputValue<
              DomainScalingParameters, Map<String, dynamic>>(
          scalingParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      endpointOptions:
          Input.asOptionalInput<DomainEndpointOptions>(map['endpointOptions']),
      indexFields:
          Input.asOptionalInput<List<DomainIndexField>>(map['indexFields']),
      multiAz: Input.asOptionalInput<bool>(map['multiAz']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingParameters: Input.asOptionalInput<DomainScalingParameters>(
          map['scalingParameters']),
    );
  }
}
