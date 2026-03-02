// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_endpoint_options.dart';
import 'domain_index_field.dart';
import 'domain_scaling_parameters.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The domain's ARN.
  final pulumi.Input<String>? arn;
  /// The service endpoint for updating documents in a search domain.
  final pulumi.Input<String>? documentServiceEndpoint;
  /// An internally generated unique identifier for the domain.
  final pulumi.Input<String>? domainId;
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
  /// The service endpoint for requesting search results from a search domain.
  final pulumi.Input<String>? searchServiceEndpoint;

  /// Creates a new [DomainState].
  /// [arn] The domain's ARN.
  /// [documentServiceEndpoint] The service endpoint for updating documents in a search domain.
  /// [domainId] An internally generated unique identifier for the domain.
  /// [endpointOptions] Domain endpoint options. Documented below.
  /// [indexFields] The index fields for documents added to the domain. Documented below.
  /// [multiAz] Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  /// [name] The name of the CloudSearch domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingParameters] Domain scaling parameters. Documented below.
  /// [searchServiceEndpoint] The service endpoint for requesting search results from a search domain.
  DomainState({
    this.arn,
    this.documentServiceEndpoint,
    this.domainId,
    this.endpointOptions,
    this.indexFields,
    this.multiAz,
    this.name,
    this.region,
    this.scalingParameters,
    this.searchServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'documentServiceEndpoint': ?documentServiceEndpoint,
      'domainId': ?domainId,
      'endpointOptions': ?pulumi.Input.mapOptionalInputValue<DomainEndpointOptions, Map<String, dynamic>>(endpointOptions, (value) => value.toMap()),
      'indexFields': ?pulumi.Input.mapOptionalInputValue<List<DomainIndexField>, List<Map<String, dynamic>>>(indexFields, (value) => pulumi.Input.encodeList<DomainIndexField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiAz': ?multiAz,
      'name': ?name,
      'region': ?region,
      'scalingParameters': ?pulumi.Input.mapOptionalInputValue<DomainScalingParameters, Map<String, dynamic>>(scalingParameters, (value) => value.toMap()),
      'searchServiceEndpoint': ?searchServiceEndpoint,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      documentServiceEndpoint: map['documentServiceEndpoint'] == null ? null : ((map['documentServiceEndpoint'] as String).input()).input(),
      domainId: map['domainId'] == null ? null : ((map['domainId'] as String).input()).input(),
      endpointOptions: map['endpointOptions'] == null ? null : ((DomainEndpointOptions.fromMap((map['endpointOptions']! as Map).cast<String, dynamic>())).input()).input(),
      indexFields: map['indexFields'] == null ? null : ((pulumi.Input.decodeList<DomainIndexField>(map['indexFields']!, (value) => DomainIndexField.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      multiAz: map['multiAz'] == null ? null : ((map['multiAz'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scalingParameters: map['scalingParameters'] == null ? null : ((DomainScalingParameters.fromMap((map['scalingParameters']! as Map).cast<String, dynamic>())).input()).input(),
      searchServiceEndpoint: map['searchServiceEndpoint'] == null ? null : ((map['searchServiceEndpoint'] as String).input()).input(),
    );
  }
}

