// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preferences.dart';
import 'product_details.dart';
import 'site_details.dart';

/// Order item details.
class OrderItemDetails {
  /// Additional notification email list.
  final pulumi.Input<List<String>>? notificationEmailList;
  /// Defines the mode of the Order item.
  final pulumi.Input<String>? orderItemMode;
  /// Order item type.
  final pulumi.Input<String> orderItemType;
  /// Customer notification Preferences.
  final pulumi.Input<Preferences>? preferences;
  /// Represents product details.
  final pulumi.Input<ProductDetails> productDetails;
  /// Site Related Details.
  final pulumi.Input<SiteDetails>? siteDetails;

  /// Creates a new [OrderItemDetails].
  /// [notificationEmailList] Additional notification email list.
  /// [orderItemMode] Defines the mode of the Order item.
  /// [orderItemType] Order item type.
  /// [preferences] Customer notification Preferences.
  /// [productDetails] Represents product details.
  /// [siteDetails] Site Related Details.
  const OrderItemDetails({
    this.notificationEmailList,
    this.orderItemMode,
    required this.orderItemType,
    this.preferences,
    required this.productDetails,
    this.siteDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEmailList': ?notificationEmailList,
      'orderItemMode': ?orderItemMode,
      'orderItemType': orderItemType,
      'preferences': ?pulumi.Input.mapOptionalInputValue<Preferences, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'productDetails': pulumi.Input.mapInputValue<ProductDetails, Map<String, dynamic>>(productDetails, (value) => value.toMap()),
      'siteDetails': ?pulumi.Input.mapOptionalInputValue<SiteDetails, Map<String, dynamic>>(siteDetails, (value) => value.toMap()),
    };
  }

  factory OrderItemDetails.fromMap(Map<String, dynamic> map) {
    return OrderItemDetails(
      notificationEmailList: (() { final guardedValue = map['notificationEmailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orderItemMode: (() { final guardedValue = map['orderItemMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderItemType: pulumi.Input.fromValue(map['orderItemType'] as String),
      preferences: (() { final guardedValue = map['preferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Preferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      productDetails: pulumi.Input.fromValue(ProductDetails.fromMap((map['productDetails']! as Map).cast<String, dynamic>())),
      siteDetails: (() { final guardedValue = map['siteDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

