// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_settings_response_appengine_v1beta.dart';
import 'identity_aware_proxy_response_appengine_v1beta.dart';
import 'url_dispatch_rule_response_appengine_v1beta.dart';

/// Result data returned by getApp.
class GetAppAppengineV1betaResult {
  /// Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  final String authDomain;

  /// Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.
  final String codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  final String databaseType;

  /// Google Cloud Storage bucket that can be used by this application to store content.
  final String defaultBucket;

  /// Cookie expiration policy for this application.
  final String defaultCookieExpiration;

  /// Hostname used to reach this application, as resolved by App Engine.
  final String defaultHostname;

  /// HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  final List<UrlDispatchRuleResponseAppengineV1beta> dispatchRules;

  /// The feature specific settings to be used in the application.
  final FeatureSettingsResponseAppengineV1beta featureSettings;

  /// The Google Container Registry domain used for storing managed build docker images for this application.
  final String gcrDomain;

  /// Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  final Map<String, String> generatedCustomerMetadata;
  final IdentityAwareProxyResponseAppengineV1beta iap;

  /// Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  final String location;

  /// Full path to the Application resource in the API. Example: apps/myapp.
  final String name;

  /// The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  final String serviceAccount;

  /// Serving status of this application.
  final String servingStatus;

  /// Creates a new [GetAppAppengineV1betaResult].
  /// [authDomain] Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  /// [codeBucket] Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.
  /// [databaseType] The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// [defaultBucket] Google Cloud Storage bucket that can be used by this application to store content.
  /// [defaultCookieExpiration] Cookie expiration policy for this application.
  /// [defaultHostname] Hostname used to reach this application, as resolved by App Engine.
  /// [dispatchRules] HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  /// [featureSettings] The feature specific settings to be used in the application.
  /// [gcrDomain] The Google Container Registry domain used for storing managed build docker images for this application.
  /// [generatedCustomerMetadata] Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  /// [iap] Required.
  /// [location] Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  /// [name] Full path to the Application resource in the API. Example: apps/myapp.
  /// [serviceAccount] The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  /// [servingStatus] Serving status of this application.
  GetAppAppengineV1betaResult({
    required this.authDomain,
    required this.codeBucket,
    required this.databaseType,
    required this.defaultBucket,
    required this.defaultCookieExpiration,
    required this.defaultHostname,
    required this.dispatchRules,
    required this.featureSettings,
    required this.gcrDomain,
    required this.generatedCustomerMetadata,
    required this.iap,
    required this.location,
    required this.name,
    required this.serviceAccount,
    required this.servingStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authDomain'] = authDomain;
    map['codeBucket'] = codeBucket;
    map['databaseType'] = databaseType;
    map['defaultBucket'] = defaultBucket;
    map['defaultCookieExpiration'] = defaultCookieExpiration;
    map['defaultHostname'] = defaultHostname;
    map['dispatchRules'] = pulumi.Input.encodeList<
        UrlDispatchRuleResponseAppengineV1beta,
        Map<String, dynamic>>(dispatchRules, (value) => value.toMap());
    map['featureSettings'] = featureSettings.toMap();
    map['gcrDomain'] = gcrDomain;
    map['generatedCustomerMetadata'] = generatedCustomerMetadata;
    map['iap'] = iap.toMap();
    map['location'] = location;
    map['name'] = name;
    map['serviceAccount'] = serviceAccount;
    map['servingStatus'] = servingStatus;
    return map;
  }

  factory GetAppAppengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetAppAppengineV1betaResult(
      authDomain: map['authDomain'] as String,
      codeBucket: map['codeBucket'] as String,
      databaseType: map['databaseType'] as String,
      defaultBucket: map['defaultBucket'] as String,
      defaultCookieExpiration: map['defaultCookieExpiration'] as String,
      defaultHostname: map['defaultHostname'] as String,
      dispatchRules:
          pulumi.Input.decodeList<UrlDispatchRuleResponseAppengineV1beta>(
              map['dispatchRules'],
              (value) => UrlDispatchRuleResponseAppengineV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      featureSettings: FeatureSettingsResponseAppengineV1beta.fromMap(
          (map['featureSettings'] as Map).cast<String, dynamic>()),
      gcrDomain: map['gcrDomain'] as String,
      generatedCustomerMetadata:
          (map['generatedCustomerMetadata'] as Map).cast<String, String>(),
      iap: IdentityAwareProxyResponseAppengineV1beta.fromMap(
          (map['iap'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      servingStatus: map['servingStatus'] as String,
    );
  }
}
