// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_error_document.dart';
import 'bucket_website_index_document.dart';
import 'bucket_website_routing_rules.dart';

/// Input properties used for looking up and filtering BucketWebsite resources.
class BucketWebsiteState {
  /// The name of the bucket
  final pulumi.Input<String>? bucket;

  /// The container that holds the error page configuration information. See `error_document` below.
  final pulumi.Input<BucketWebsiteErrorDocument>? errorDocument;

  /// Static Website Default Home Page Configuration See `index_document` below.
  final pulumi.Input<BucketWebsiteIndexDocument>? indexDocument;

  /// The container that holds the jump rule or the mirroring back-to-origin rule. See `routing_rules` below.
  final pulumi.Input<BucketWebsiteRoutingRules>? routingRules;

  /// Creates a new [BucketWebsiteState].
  /// [bucket] The name of the bucket
  /// [errorDocument] The container that holds the error page configuration information. See `error_document` below.
  /// [indexDocument] Static Website Default Home Page Configuration See `index_document` below.
  /// [routingRules] The container that holds the jump rule or the mirroring back-to-origin rule. See `routing_rules` below.
  BucketWebsiteState({
    this.bucket,
    this.errorDocument,
    this.indexDocument,
    this.routingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'errorDocument':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteErrorDocument,
            Map<String, dynamic>
          >(errorDocument, (value) => value.toMap()),
      'indexDocument':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteIndexDocument,
            Map<String, dynamic>
          >(indexDocument, (value) => value.toMap()),
      'routingRules':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteRoutingRules,
            Map<String, dynamic>
          >(routingRules, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteState.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorDocument: (() {
        final guardedValue = map['errorDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteErrorDocument.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      indexDocument: (() {
        final guardedValue = map['indexDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteIndexDocument.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      routingRules: (() {
        final guardedValue = map['routingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteRoutingRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
