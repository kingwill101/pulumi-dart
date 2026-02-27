// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_database_type_appengine_v1beta.dart';
import 'app_serving_status_appengine_v1beta.dart';
import 'feature_settings_appengine_v1beta.dart';
import 'identity_aware_proxy_appengine_v1beta.dart';
import 'url_dispatch_rule_appengine_v1beta.dart';

/// The set of arguments for App.
class AppAppengineV1betaArgs {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final pulumi.Input<String>? authDomain;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final pulumi.Input<AppDatabaseTypeAppengineV1beta>? databaseType;

  /// Cookie expiration policy for this application.
  final pulumi.Input<String>? defaultCookieExpiration;

  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final pulumi.Input<List<UrlDispatchRuleAppengineV1beta>>? dispatchRules;

  /// The feature specific settings to be used in the application.
  final pulumi.Input<FeatureSettingsAppengineV1beta>? featureSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  final pulumi.Input<IdentityAwareProxyAppengineV1beta>? iap;

  /// Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  final pulumi.Input<String>? id;

  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final pulumi.Input<String>? location;

  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final pulumi.Input<String>? serviceAccount;

  /// Serving status of this application.
  final pulumi.Input<AppServingStatusAppengineV1beta>? servingStatus;

  AppAppengineV1betaArgs({
    this.authDomain,
    this.databaseType,
    this.defaultCookieExpiration,
    this.dispatchRules,
    this.featureSettings,
    this.generatedCustomerMetadata,
    this.iap,
    this.id,
    this.location,
    this.serviceAccount,
    this.servingStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authDomainValue = authDomain;
    if (authDomainValue != null) {
      map['authDomain'] = authDomainValue;
    }
    final databaseTypeValue = databaseType;
    if (databaseTypeValue != null) {
      map['databaseType'] = pulumi.Input.mapOptionalInputValue<
          AppDatabaseTypeAppengineV1beta,
          String>(databaseTypeValue, (value) => value.value);
    }
    final defaultCookieExpirationValue = defaultCookieExpiration;
    if (defaultCookieExpirationValue != null) {
      map['defaultCookieExpiration'] = defaultCookieExpirationValue;
    }
    final dispatchRulesValue = dispatchRules;
    if (dispatchRulesValue != null) {
      map['dispatchRules'] = pulumi.Input.mapOptionalInputValue<
              List<UrlDispatchRuleAppengineV1beta>, List<Map<String, dynamic>>>(
          dispatchRulesValue,
          (value) => pulumi.Input.encodeList<UrlDispatchRuleAppengineV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final featureSettingsValue = featureSettings;
    if (featureSettingsValue != null) {
      map['featureSettings'] = pulumi.Input.mapOptionalInputValue<
          FeatureSettingsAppengineV1beta,
          Map<String, dynamic>>(featureSettingsValue, (value) => value.toMap());
    }
    final generatedCustomerMetadataValue = generatedCustomerMetadata;
    if (generatedCustomerMetadataValue != null) {
      map['generatedCustomerMetadata'] = generatedCustomerMetadataValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] = pulumi.Input.mapOptionalInputValue<
          IdentityAwareProxyAppengineV1beta,
          Map<String, dynamic>>(iapValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final servingStatusValue = servingStatus;
    if (servingStatusValue != null) {
      map['servingStatus'] = pulumi.Input.mapOptionalInputValue<
          AppServingStatusAppengineV1beta,
          String>(servingStatusValue, (value) => value.value);
    }
    return map;
  }

  factory AppAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return AppAppengineV1betaArgs(
      authDomain: pulumi.Input.asOptionalInput<String>(map['authDomain']),
      databaseType:
          pulumi.Input.asOptionalInput<AppDatabaseTypeAppengineV1beta>(
              map['databaseType']),
      defaultCookieExpiration:
          pulumi.Input.asOptionalInput<String>(map['defaultCookieExpiration']),
      dispatchRules:
          pulumi.Input.asOptionalInput<List<UrlDispatchRuleAppengineV1beta>>(
              map['dispatchRules']),
      featureSettings:
          pulumi.Input.asOptionalInput<FeatureSettingsAppengineV1beta>(
              map['featureSettings']),
      generatedCustomerMetadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['generatedCustomerMetadata']),
      iap: pulumi.Input.asOptionalInput<IdentityAwareProxyAppengineV1beta>(
          map['iap']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      servingStatus:
          pulumi.Input.asOptionalInput<AppServingStatusAppengineV1beta>(
              map['servingStatus']),
    );
  }
}
