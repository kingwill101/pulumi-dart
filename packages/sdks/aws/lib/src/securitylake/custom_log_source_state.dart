// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_log_source_attribute.dart';
import 'custom_log_source_configuration.dart';
import 'custom_log_source_provider_detail.dart';

/// Input properties used for looking up and filtering CustomLogSource resources.
class CustomLogSourceState {
  /// The attributes of a third-party custom source.
  final pulumi.Input<List<CustomLogSourceAttribute>>? attributes;
  /// The configuration for the third-party custom source.
  final pulumi.Input<CustomLogSourceConfiguration>? configuration;
  /// The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  final pulumi.Input<List<String>>? eventClasses;
  /// The details of the log provider for a third-party custom source.
  final pulumi.Input<List<CustomLogSourceProviderDetail>>? providerDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specify the name for a third-party custom source.
  /// This must be a Regionally unique value.
  /// Has a maximum length of 20.
  final pulumi.Input<String>? sourceName;
  /// Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  final pulumi.Input<String>? sourceVersion;

  /// Creates a new [CustomLogSourceState].
  /// [attributes] The attributes of a third-party custom source.
  /// [configuration] The configuration for the third-party custom source.
  /// [eventClasses] The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  /// [providerDetails] The details of the log provider for a third-party custom source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceName] Specify the name for a third-party custom source.
  /// [sourceVersion] Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  CustomLogSourceState({
    this.attributes,
    this.configuration,
    this.eventClasses,
    this.providerDetails,
    this.region,
    this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<CustomLogSourceAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<CustomLogSourceAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?pulumi.Input.mapOptionalInputValue<CustomLogSourceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'eventClasses': ?eventClasses,
      'providerDetails': ?pulumi.Input.mapOptionalInputValue<List<CustomLogSourceProviderDetail>, List<Map<String, dynamic>>>(providerDetails, (value) => pulumi.Input.encodeList<CustomLogSourceProviderDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sourceName': ?sourceName,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory CustomLogSourceState.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceState(
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<CustomLogSourceAttribute>(map['attributes'], (value) => CustomLogSourceAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configuration: map['configuration'] == null ? null : (CustomLogSourceConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      eventClasses: map['eventClasses'] == null ? null : ((map['eventClasses'] as List).cast<String>()).input(),
      providerDetails: map['providerDetails'] == null ? null : (pulumi.Input.decodeList<CustomLogSourceProviderDetail>(map['providerDetails'], (value) => CustomLogSourceProviderDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceName: map['sourceName'] == null ? null : (map['sourceName'] as String).input(),
      sourceVersion: map['sourceVersion'] == null ? null : (map['sourceVersion'] as String).input(),
    );
  }
}

