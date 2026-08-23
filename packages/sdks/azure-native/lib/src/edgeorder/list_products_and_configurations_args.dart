// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_filter.dart';
import 'customer_subscription_details.dart';

/// {@template pulumi_edgeorder_list_products_and_configurations_args_doc}
/// Arguments for listProductsAndConfigurations.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_list_products_and_configurations_args_doc}
class ListProductsAndConfigurationsArgs {
  /// Holds details about product hierarchy information and filterable property.
  final pulumi.Input<ConfigurationFilter>? configurationFilter;
  /// Customer subscription properties. Clients can display available products to unregistered customers by explicitly passing subscription details.
  final pulumi.Input<CustomerSubscriptionDetails>? customerSubscriptionDetails;
  /// $skipToken is supported on list of configurations, which provides the next page in the list of configurations.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListProductsAndConfigurationsArgs].
  /// [configurationFilter] Holds details about product hierarchy information and filterable property.
  /// [customerSubscriptionDetails] Customer subscription properties. Clients can display available products to unregistered customers by explicitly passing subscription details.
  /// [skipToken] $skipToken is supported on list of configurations, which provides the next page in the list of configurations.
  const ListProductsAndConfigurationsArgs({
    this.configurationFilter,
    this.customerSubscriptionDetails,
    this.skipToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationFilter': ?pulumi.Input.mapOptionalInputValue<ConfigurationFilter, Map<String, dynamic>>(configurationFilter, (value) => value.toMap()),
      'customerSubscriptionDetails': ?pulumi.Input.mapOptionalInputValue<CustomerSubscriptionDetails, Map<String, dynamic>>(customerSubscriptionDetails, (value) => value.toMap()),
      'skipToken': ?skipToken,
    };
  }

  factory ListProductsAndConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return ListProductsAndConfigurationsArgs(
      configurationFilter: (() { final guardedValue = map['configurationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerSubscriptionDetails: (() { final guardedValue = map['customerSubscriptionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerSubscriptionDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
