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
  const GetInstanceTypeOfferingsResult({
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
      brokerInstanceOptions: pulumi.Input.decodeList<GetInstanceTypeOfferingsBrokerInstanceOption>(map['brokerInstanceOptions']!, (value) => GetInstanceTypeOfferingsBrokerInstanceOption.fromMap((value as Map).cast<String, dynamic>())),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostInstanceType: (() { final guardedValue = map['hostInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      region: map['region'] as String,
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

