// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_database_type.dart';
import 'app_serving_status.dart';
import 'feature_settings.dart';
import 'identity_aware_proxy.dart';
import 'url_dispatch_rule.dart';

/// {@template pulumi_appengine_v1_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_app_args_doc}
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

  /// Creates a new [AppArgs].
  /// [authDomain] Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [defaultCookieExpiration] Cookie expiration policy for this application.
  /// [dispatchRules] HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  /// [featureSettings] The feature specific settings to be used in the application.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  /// [iap] Optional.
  /// [id] Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  /// [location] Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  /// [serviceAccount] The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  /// [servingStatus] Serving status of this application.
  AppArgs({
    String? authDomain,
    AppDatabaseType? databaseType,
    String? defaultCookieExpiration,
    List<UrlDispatchRule>? dispatchRules,
    FeatureSettings? featureSettings,
    Map<String, String>? generatedCustomerMetadata,
    IdentityAwareProxy? iap,
    String? id,
    String? location,
    String? serviceAccount,
    AppServingStatus? servingStatus,
  })  : authDomain = pulumi.Input.asOptionalInput<String>(authDomain),
        databaseType =
            pulumi.Input.asOptionalInput<AppDatabaseType>(databaseType),
        defaultCookieExpiration =
            pulumi.Input.asOptionalInput<String>(defaultCookieExpiration),
        dispatchRules =
            pulumi.Input.asOptionalInput<List<UrlDispatchRule>>(dispatchRules),
        featureSettings =
            pulumi.Input.asOptionalInput<FeatureSettings>(featureSettings),
        generatedCustomerMetadata =
            pulumi.Input.asOptionalInput<Map<String, String>>(
                generatedCustomerMetadata),
        iap = pulumi.Input.asOptionalInput<IdentityAwareProxy>(iap),
        id = pulumi.Input.asOptionalInput<String>(id),
        location = pulumi.Input.asOptionalInput<String>(location),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        servingStatus =
            pulumi.Input.asOptionalInput<AppServingStatus>(servingStatus);

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
      authDomain:
          map['authDomain'] == null ? null : map['authDomain'] as String,
      databaseType: map['databaseType'] == null
          ? null
          : AppDatabaseType.fromValue(map['databaseType'] as String),
      defaultCookieExpiration: map['defaultCookieExpiration'] == null
          ? null
          : map['defaultCookieExpiration'] as String,
      dispatchRules: map['dispatchRules'] == null
          ? null
          : pulumi.Input.decodeList<UrlDispatchRule>(
              map['dispatchRules'],
              (value) => UrlDispatchRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      featureSettings: map['featureSettings'] == null
          ? null
          : FeatureSettings.fromMap(
              (map['featureSettings'] as Map).cast<String, dynamic>()),
      generatedCustomerMetadata: map['generatedCustomerMetadata'] == null
          ? null
          : (map['generatedCustomerMetadata'] as Map).cast<String, String>(),
      iap: map['iap'] == null
          ? null
          : IdentityAwareProxy.fromMap(
              (map['iap'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      servingStatus: map['servingStatus'] == null
          ? null
          : AppServingStatus.fromValue(map['servingStatus'] as String),
    );
  }
}
