// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_broker_instance_option.dart';

/// Result data returned by getInstanceTypeOfferings.
class GetInstanceTypeOfferingsResult {
  /// List of broker instance options. See Broker Instance Options below.
  final List<GetInstanceTypeOfferingsBrokerInstanceOption> brokerInstanceOptions;
  /// Broker's engine type.
  final String? engineType;
  /// Broker's instance type.
  final String? hostInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Broker's storage type.
  final String? storageType;

  /// Creates a new [GetInstanceTypeOfferingsResult].
  /// [brokerInstanceOptions] List of broker instance options. See Broker Instance Options below.
  /// [engineType] Broker's engine type.
  /// [hostInstanceType] Broker's instance type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [storageType] Broker's storage type.
  GetInstanceTypeOfferingsResult({
    required this.brokerInstanceOptions,
    this.engineType,
    this.hostInstanceType,
    required this.id,
    required this.region,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerInstanceOptions': pulumi.Input.encodeList<GetInstanceTypeOfferingsBrokerInstanceOption, Map<String, dynamic>>(brokerInstanceOptions, (value) => value.toMap()),
      'engineType': ?engineType,
      'hostInstanceType': ?hostInstanceType,
      'id': id,
      'region': region,
      'storageType': ?storageType,
    };
  }

  factory GetInstanceTypeOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsResult(
      brokerInstanceOptions: pulumi.Input.decodeList<GetInstanceTypeOfferingsBrokerInstanceOption>(map['brokerInstanceOptions'], (value) => GetInstanceTypeOfferingsBrokerInstanceOption.fromMap((value as Map).cast<String, dynamic>())),
      engineType: map['engineType'] == null ? null : map['engineType'] as String,
      hostInstanceType: map['hostInstanceType'] == null ? null : map['hostInstanceType'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

