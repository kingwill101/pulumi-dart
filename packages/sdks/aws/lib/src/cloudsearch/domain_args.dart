// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_endpoint_options.dart';
import 'domain_index_field.dart';
import 'domain_scaling_parameters.dart';

/// {@template pulumi_cloudsearch_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_domain_domain_args_doc}
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

  /// Creates a new [DomainArgs].
  /// [endpointOptions] Domain endpoint options. Documented below.
  /// [indexFields] The index fields for documents added to the domain. Documented below.
  /// [multiAz] Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  /// [name] The name of the CloudSearch domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingParameters] Domain scaling parameters. Documented below.
  DomainArgs({
    pulumi.Output<DomainEndpointOptions>? endpointOptions,
    pulumi.Output<List<DomainIndexField>>? indexFields,
    pulumi.Output<bool>? multiAz,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<DomainScalingParameters>? scalingParameters,
  }) :
      endpointOptions = pulumi.Input.asOptionalInput<DomainEndpointOptions>(endpointOptions),
      indexFields = pulumi.Input.asOptionalInput<List<DomainIndexField>>(indexFields),
      multiAz = pulumi.Input.asOptionalInput<bool>(multiAz),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scalingParameters = pulumi.Input.asOptionalInput<DomainScalingParameters>(scalingParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointOptions': ?pulumi.Input.mapOptionalInputValue<DomainEndpointOptions, Map<String, dynamic>>(endpointOptions, (value) => value.toMap()),
      'indexFields': ?pulumi.Input.mapOptionalInputValue<List<DomainIndexField>, List<Map<String, dynamic>>>(indexFields, (value) => pulumi.Input.encodeList<DomainIndexField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiAz': ?multiAz,
      'name': ?name,
      'region': ?region,
      'scalingParameters': ?pulumi.Input.mapOptionalInputValue<DomainScalingParameters, Map<String, dynamic>>(scalingParameters, (value) => value.toMap()),
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      endpointOptions: map['endpointOptions'] == null ? null : pulumi.Output.create<DomainEndpointOptions>(DomainEndpointOptions.fromMap((map['endpointOptions'] as Map).cast<String, dynamic>())),
      indexFields: map['indexFields'] == null ? null : pulumi.Output.create<List<DomainIndexField>>(pulumi.Input.decodeList<DomainIndexField>(map['indexFields'], (value) => DomainIndexField.fromMap((value as Map).cast<String, dynamic>()))),
      multiAz: map['multiAz'] == null ? null : pulumi.Output.create<bool>(map['multiAz'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scalingParameters: map['scalingParameters'] == null ? null : pulumi.Output.create<DomainScalingParameters>(DomainScalingParameters.fromMap((map['scalingParameters'] as Map).cast<String, dynamic>())),
    );
  }
}

