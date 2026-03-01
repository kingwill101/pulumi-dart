// ignore_for_file: unused_element, unnecessary_cast

import 'preferences.dart';
import 'product_details.dart';
import 'site_details.dart';

/// Order item details.
class OrderItemDetails {
  /// Additional notification email list.
  final List<String>? notificationEmailList;
  /// Defines the mode of the Order item.
  final String? orderItemMode;
  /// Order item type.
  final String orderItemType;
  /// Customer notification Preferences.
  final Preferences? preferences;
  /// Represents product details.
  final ProductDetails productDetails;
  /// Site Related Details.
  final SiteDetails? siteDetails;

  /// Creates a new [OrderItemDetails].
  /// [notificationEmailList] Additional notification email list.
  /// [orderItemMode] Defines the mode of the Order item.
  /// [orderItemType] Order item type.
  /// [preferences] Customer notification Preferences.
  /// [productDetails] Represents product details.
  /// [siteDetails] Site Related Details.
  OrderItemDetails({
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
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'productDetails': productDetails.toMap(),
      'siteDetails': ?siteDetails == null ? null : siteDetails!.toMap(),
    };
  }

  factory OrderItemDetails.fromMap(Map<String, dynamic> map) {
    return OrderItemDetails(
      notificationEmailList: map['notificationEmailList'] == null ? null : (map['notificationEmailList'] as List).cast<String>(),
      orderItemMode: map['orderItemMode'] == null ? null : map['orderItemMode'] as String,
      orderItemType: map['orderItemType'] as String,
      preferences: map['preferences'] == null ? null : Preferences.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      productDetails: ProductDetails.fromMap((map['productDetails'] as Map).cast<String, dynamic>()),
      siteDetails: map['siteDetails'] == null ? null : SiteDetails.fromMap((map['siteDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

