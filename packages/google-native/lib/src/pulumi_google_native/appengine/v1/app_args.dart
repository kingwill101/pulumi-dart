// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_database_type.dart';
import 'app_serving_status.dart';
import 'feature_settings.dart';
import 'identity_aware_proxy.dart';
import 'url_dispatch_rule.dart';

/// The set of arguments for App.
class AppArgs {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final pulumi.Input<String>? authDomain;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final pulumi.Input<AppDatabaseType>? databaseType;

  /// Cookie expiration policy for this application.
  final pulumi.Input<String>? defaultCookieExpiration;

  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final pulumi.Input<List<UrlDispatchRule>>? dispatchRules;

  /// The feature specific settings to be used in the application.
  final pulumi.Input<FeatureSettings>? featureSettings;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final pulumi.Input<Map<String, String>>? generatedCustomerMetadata;
  final pulumi.Input<IdentityAwareProxy>? iap;

  /// Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  final pulumi.Input<String>? id;

  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final pulumi.Input<String>? location;

  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final pulumi.Input<String>? serviceAccount;

  /// Serving status of this application.
  final pulumi.Input<AppServingStatus>? servingStatus;

  AppArgs({
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
      map['databaseType'] =
          pulumi.Input.mapOptionalInputValue<AppDatabaseType, String>(
              databaseTypeValue, (value) => value.value);
    }
    final defaultCookieExpirationValue = defaultCookieExpiration;
    if (defaultCookieExpirationValue != null) {
      map['defaultCookieExpiration'] = defaultCookieExpirationValue;
    }
    final dispatchRulesValue = dispatchRules;
    if (dispatchRulesValue != null) {
      map['dispatchRules'] = pulumi.Input.mapOptionalInputValue<
              List<UrlDispatchRule>, List<Map<String, dynamic>>>(
          dispatchRulesValue,
          (value) =>
              pulumi.Input.encodeList<UrlDispatchRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final featureSettingsValue = featureSettings;
    if (featureSettingsValue != null) {
      map['featureSettings'] = pulumi.Input.mapOptionalInputValue<
          FeatureSettings,
          Map<String, dynamic>>(featureSettingsValue, (value) => value.toMap());
    }
    final generatedCustomerMetadataValue = generatedCustomerMetadata;
    if (generatedCustomerMetadataValue != null) {
      map['generatedCustomerMetadata'] = generatedCustomerMetadataValue;
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] = pulumi.Input.mapOptionalInputValue<IdentityAwareProxy,
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
      map['servingStatus'] =
          pulumi.Input.mapOptionalInputValue<AppServingStatus, String>(
              servingStatusValue, (value) => value.value);
    }
    return map;
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      authDomain: pulumi.Input.asOptionalInput<String>(map['authDomain']),
      databaseType:
          pulumi.Input.asOptionalInput<AppDatabaseType>(map['databaseType']),
      defaultCookieExpiration:
          pulumi.Input.asOptionalInput<String>(map['defaultCookieExpiration']),
      dispatchRules: pulumi.Input.asOptionalInput<List<UrlDispatchRule>>(
          map['dispatchRules']),
      featureSettings:
          pulumi.Input.asOptionalInput<FeatureSettings>(map['featureSettings']),
      generatedCustomerMetadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['generatedCustomerMetadata']),
      iap: pulumi.Input.asOptionalInput<IdentityAwareProxy>(map['iap']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      servingStatus:
          pulumi.Input.asOptionalInput<AppServingStatus>(map['servingStatus']),
    );
  }
}
