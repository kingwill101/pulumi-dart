// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_website_routing_rules_routing_rule_redirect_mirror_auth.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_headers.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_multi_alternates.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_return_headers.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_taggings.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirect {
  /// If this field is set to true, the prefix of Object is replaced with the value specified by ReplaceKeyPrefixWith. If this field is not specified or is blank, the Object prefix is truncated.
  final bool? enableReplacePrefix;
  /// The domain name during the jump. The domain name must comply with the domain name specification.
  final String? hostName;
  /// The status code returned during the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  final String? httpRedirectCode;
  /// Image back-to-source allows getting Image information
  final bool? mirrorAllowGetImageInfo;
  /// Whether to allow HeadObject in image back-to-source
  final bool? mirrorAllowHeadObject;
  /// Mirror back-to-source allows support for video frame truncation
  final bool? mirrorAllowVideoSnapshot;
  /// The status code of the mirror back-to-source trigger asynchronous pull mode.
  final int? mirrorAsyncStatus;
  /// Image back Source station authentication information See `mirror_auth` below.
  final BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth? mirrorAuth;
  /// Whether to check the MD5 of the source body. It takes effect only when the RedirectType is set to Mirror.
  final bool? mirrorCheckMd5;
  /// Mirrored back-to-source high-speed Channel vpregion
  final String? mirrorDstRegion;
  /// Mirroring back-to-source high-speed Channel standby station VpcId
  final String? mirrorDstSlaveVpcId;
  /// Mirror back-to-source high-speed Channel VpcId
  final String? mirrorDstVpcId;
  /// If the result of the image back-to-source acquisition is 3xx, whether to continue to jump to the specified Location to obtain data. It takes effect only when the RedirectType is set to Mirror.
  final bool? mirrorFollowRedirect;
  /// Specifies the Header carried when the image returns to the source. It takes effect only when the RedirectType is set to Mirror. See `mirror_headers` below.
  final BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders? mirrorHeaders;
  /// Whether it is a mirror back-to-source high-speed Channel
  final bool? mirrorIsExpressTunnel;
  /// Mirror back-to-source multi-source station configuration container. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_multi_alternates` below.
  final BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates? mirrorMultiAlternates;
  /// Transparent transmission/to source Station
  final bool? mirrorPassOriginalSlashes;
  /// Same as PassQueryString and takes precedence over PassQueryString. It takes effect only when the RedirectType is set to Mirror.
  final bool? mirrorPassQueryString;
  /// Whether mirroring back to source does not save data
  final bool? mirrorProxyPass;
  /// The container that saves the image back to the source and returns the response header rule. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_return_headers` below.
  final BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders? mirrorReturnHeaders;
  /// Roles used when mirroring back-to-source
  final String? mirrorRole;
  /// Mirror back-to-source back-to-source OSS automatically saves user metadata
  final bool? mirrorSaveOssMeta;
  /// Transparent transmission of SNI
  final bool? mirrorSni;
  /// It is used to judge the status of active-standby switching. The judgment logic of active-standby switching is that the source station returns an error. If MirrorSwitchAllErrors is true, it is considered a failure except the following status code: 200,206,301,302,303,307,404; If false, only the source Station Returns 5xx or times out is considered a failure.
  final bool? mirrorSwitchAllErrors;
  /// Save the label according to the parameters when saving the file from the mirror back to the source. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_taggings` below.
  final BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings? mirrorTaggings;
  /// Mirror back-to-source leased line back-to-source tunnel ID
  final String? mirrorTunnelId;
  /// The address of the origin of the image. It takes effect only when the RedirectType is set to Mirror. The origin address must start with http:// or https:// and end with a forward slash (/). OSS takes the Object name after the Origin address to form the origin URL.
  final String? mirrorUrl;
  /// Mirror back-to-source Master-backup back-to-source switching decision URL
  final String? mirrorUrlProbe;
  /// Mirror back-to-source primary backup back-to-source backup station URL
  final String? mirrorUrlSlave;
  /// Whether the source station LastModifiedTime is used for the image back-to-source save file.
  final bool? mirrorUserLastModified;
  /// Whether to use role for mirroring back to source
  final bool? mirrorUsingRole;
  /// Whether to carry the request parameters when executing the jump or mirror back-to-source rule. Did the user carry the request parameters when requesting OSS? a = B & c = d, and set PassQueryString to true. If the rule is a 302 jump, this request parameter is added to the Location header of the jump. For example Location:example.com? a = B & c = d, and the jump type is mirrored back-to-origin, this request parameter is also carried in the back-to-origin request initiated. Values: true, false (default)
  final bool? passQueryString;
  /// The protocol at the time of the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  final String? protocol;
  /// Specifies the type of jump. The value range is as follows: Mirror: Mirror back to the source. External: External redirects, that is, OSS returns a 3xx request to redirect to another address. AliCDN: Alibaba Cloud CDN jump, mainly used for Alibaba Cloud CDN. Unlike External, OSS adds an additional Header. After recognizing this Header, Alibaba Cloud CDN redirects the data to the specified address and returns the obtained data to the user instead of returning the 3xx Redirection request to the user.
  final String? redirectType;
  /// The prefix of the Object name will be replaced with this value during Redirect. If the prefix is empty, this string is inserted in front of the Object name.
  final String? replaceKeyPrefixWith;
  /// During redirection, the Object name is replaced with the value specified by ReplaceKeyWith. You can set variables in ReplaceKeyWith. Currently, the supported variable is ${key}, which indicates the name of the Object in the request.
  final String? replaceKeyWith;
  /// Mirror back-to-source transparent source station response code list
  final String? transparentMirrorResponseCodes;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirect].
  /// [enableReplacePrefix] If this field is set to true, the prefix of Object is replaced with the value specified by ReplaceKeyPrefixWith. If this field is not specified or is blank, the Object prefix is truncated.
  /// [hostName] The domain name during the jump. The domain name must comply with the domain name specification.
  /// [httpRedirectCode] The status code returned during the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  /// [mirrorAllowGetImageInfo] Image back-to-source allows getting Image information
  /// [mirrorAllowHeadObject] Whether to allow HeadObject in image back-to-source
  /// [mirrorAllowVideoSnapshot] Mirror back-to-source allows support for video frame truncation
  /// [mirrorAsyncStatus] The status code of the mirror back-to-source trigger asynchronous pull mode.
  /// [mirrorAuth] Image back Source station authentication information See `mirror_auth` below.
  /// [mirrorCheckMd5] Whether to check the MD5 of the source body. It takes effect only when the RedirectType is set to Mirror.
  /// [mirrorDstRegion] Mirrored back-to-source high-speed Channel vpregion
  /// [mirrorDstSlaveVpcId] Mirroring back-to-source high-speed Channel standby station VpcId
  /// [mirrorDstVpcId] Mirror back-to-source high-speed Channel VpcId
  /// [mirrorFollowRedirect] If the result of the image back-to-source acquisition is 3xx, whether to continue to jump to the specified Location to obtain data. It takes effect only when the RedirectType is set to Mirror.
  /// [mirrorHeaders] Specifies the Header carried when the image returns to the source. It takes effect only when the RedirectType is set to Mirror. See `mirror_headers` below.
  /// [mirrorIsExpressTunnel] Whether it is a mirror back-to-source high-speed Channel
  /// [mirrorMultiAlternates] Mirror back-to-source multi-source station configuration container. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_multi_alternates` below.
  /// [mirrorPassOriginalSlashes] Transparent transmission/to source Station
  /// [mirrorPassQueryString] Same as PassQueryString and takes precedence over PassQueryString. It takes effect only when the RedirectType is set to Mirror.
  /// [mirrorProxyPass] Whether mirroring back to source does not save data
  /// [mirrorReturnHeaders] The container that saves the image back to the source and returns the response header rule. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_return_headers` below.
  /// [mirrorRole] Roles used when mirroring back-to-source
  /// [mirrorSaveOssMeta] Mirror back-to-source back-to-source OSS automatically saves user metadata
  /// [mirrorSni] Transparent transmission of SNI
  /// [mirrorSwitchAllErrors] It is used to judge the status of active-standby switching. The judgment logic of active-standby switching is that the source station returns an error. If MirrorSwitchAllErrors is true, it is considered a failure except the following status code: 200,206,301,302,303,307,404; If false, only the source Station Returns 5xx or times out is considered a failure.
  /// [mirrorTaggings] Save the label according to the parameters when saving the file from the mirror back to the source. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_taggings` below.
  /// [mirrorTunnelId] Mirror back-to-source leased line back-to-source tunnel ID
  /// [mirrorUrl] The address of the origin of the image. It takes effect only when the RedirectType is set to Mirror. The origin address must start with http:// or https:// and end with a forward slash (/). OSS takes the Object name after the Origin address to form the origin URL.
  /// [mirrorUrlProbe] Mirror back-to-source Master-backup back-to-source switching decision URL
  /// [mirrorUrlSlave] Mirror back-to-source primary backup back-to-source backup station URL
  /// [mirrorUserLastModified] Whether the source station LastModifiedTime is used for the image back-to-source save file.
  /// [mirrorUsingRole] Whether to use role for mirroring back to source
  /// [passQueryString] Whether to carry the request parameters when executing the jump or mirror back-to-source rule. Did the user carry the request parameters when requesting OSS? a = B & c = d, and set PassQueryString to true. If the rule is a 302 jump, this request parameter is added to the Location header of the jump. For example Location:example.com? a = B & c = d, and the jump type is mirrored back-to-origin, this request parameter is also carried in the back-to-origin request initiated. Values: true, false (default)
  /// [protocol] The protocol at the time of the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  /// [redirectType] Specifies the type of jump. The value range is as follows: Mirror: Mirror back to the source. External: External redirects, that is, OSS returns a 3xx request to redirect to another address. AliCDN: Alibaba Cloud CDN jump, mainly used for Alibaba Cloud CDN. Unlike External, OSS adds an additional Header. After recognizing this Header, Alibaba Cloud CDN redirects the data to the specified address and returns the obtained data to the user instead of returning the 3xx Redirection request to the user.
  /// [replaceKeyPrefixWith] The prefix of the Object name will be replaced with this value during Redirect. If the prefix is empty, this string is inserted in front of the Object name.
  /// [replaceKeyWith] During redirection, the Object name is replaced with the value specified by ReplaceKeyWith. You can set variables in ReplaceKeyWith. Currently, the supported variable is ${key}, which indicates the name of the Object in the request.
  /// [transparentMirrorResponseCodes] Mirror back-to-source transparent source station response code list
  BucketWebsiteRoutingRulesRoutingRuleRedirect({
    this.enableReplacePrefix,
    this.hostName,
    this.httpRedirectCode,
    this.mirrorAllowGetImageInfo,
    this.mirrorAllowHeadObject,
    this.mirrorAllowVideoSnapshot,
    this.mirrorAsyncStatus,
    this.mirrorAuth,
    this.mirrorCheckMd5,
    this.mirrorDstRegion,
    this.mirrorDstSlaveVpcId,
    this.mirrorDstVpcId,
    this.mirrorFollowRedirect,
    this.mirrorHeaders,
    this.mirrorIsExpressTunnel,
    this.mirrorMultiAlternates,
    this.mirrorPassOriginalSlashes,
    this.mirrorPassQueryString,
    this.mirrorProxyPass,
    this.mirrorReturnHeaders,
    this.mirrorRole,
    this.mirrorSaveOssMeta,
    this.mirrorSni,
    this.mirrorSwitchAllErrors,
    this.mirrorTaggings,
    this.mirrorTunnelId,
    this.mirrorUrl,
    this.mirrorUrlProbe,
    this.mirrorUrlSlave,
    this.mirrorUserLastModified,
    this.mirrorUsingRole,
    this.passQueryString,
    this.protocol,
    this.redirectType,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
    this.transparentMirrorResponseCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableReplacePrefix': ?enableReplacePrefix,
      'hostName': ?hostName,
      'httpRedirectCode': ?httpRedirectCode,
      'mirrorAllowGetImageInfo': ?mirrorAllowGetImageInfo,
      'mirrorAllowHeadObject': ?mirrorAllowHeadObject,
      'mirrorAllowVideoSnapshot': ?mirrorAllowVideoSnapshot,
      'mirrorAsyncStatus': ?mirrorAsyncStatus,
      'mirrorAuth': ?mirrorAuth == null ? null : mirrorAuth!.toMap(),
      'mirrorCheckMd5': ?mirrorCheckMd5,
      'mirrorDstRegion': ?mirrorDstRegion,
      'mirrorDstSlaveVpcId': ?mirrorDstSlaveVpcId,
      'mirrorDstVpcId': ?mirrorDstVpcId,
      'mirrorFollowRedirect': ?mirrorFollowRedirect,
      'mirrorHeaders': ?mirrorHeaders == null ? null : mirrorHeaders!.toMap(),
      'mirrorIsExpressTunnel': ?mirrorIsExpressTunnel,
      'mirrorMultiAlternates': ?mirrorMultiAlternates == null ? null : mirrorMultiAlternates!.toMap(),
      'mirrorPassOriginalSlashes': ?mirrorPassOriginalSlashes,
      'mirrorPassQueryString': ?mirrorPassQueryString,
      'mirrorProxyPass': ?mirrorProxyPass,
      'mirrorReturnHeaders': ?mirrorReturnHeaders == null ? null : mirrorReturnHeaders!.toMap(),
      'mirrorRole': ?mirrorRole,
      'mirrorSaveOssMeta': ?mirrorSaveOssMeta,
      'mirrorSni': ?mirrorSni,
      'mirrorSwitchAllErrors': ?mirrorSwitchAllErrors,
      'mirrorTaggings': ?mirrorTaggings == null ? null : mirrorTaggings!.toMap(),
      'mirrorTunnelId': ?mirrorTunnelId,
      'mirrorUrl': ?mirrorUrl,
      'mirrorUrlProbe': ?mirrorUrlProbe,
      'mirrorUrlSlave': ?mirrorUrlSlave,
      'mirrorUserLastModified': ?mirrorUserLastModified,
      'mirrorUsingRole': ?mirrorUsingRole,
      'passQueryString': ?passQueryString,
      'protocol': ?protocol,
      'redirectType': ?redirectType,
      'replaceKeyPrefixWith': ?replaceKeyPrefixWith,
      'replaceKeyWith': ?replaceKeyWith,
      'transparentMirrorResponseCodes': ?transparentMirrorResponseCodes,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirect.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirect(
      enableReplacePrefix: map['enableReplacePrefix'] == null ? null : map['enableReplacePrefix'] as bool,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      httpRedirectCode: map['httpRedirectCode'] == null ? null : map['httpRedirectCode'] as String,
      mirrorAllowGetImageInfo: map['mirrorAllowGetImageInfo'] == null ? null : map['mirrorAllowGetImageInfo'] as bool,
      mirrorAllowHeadObject: map['mirrorAllowHeadObject'] == null ? null : map['mirrorAllowHeadObject'] as bool,
      mirrorAllowVideoSnapshot: map['mirrorAllowVideoSnapshot'] == null ? null : map['mirrorAllowVideoSnapshot'] as bool,
      mirrorAsyncStatus: map['mirrorAsyncStatus'] == null ? null : map['mirrorAsyncStatus'] as int,
      mirrorAuth: map['mirrorAuth'] == null ? null : BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth.fromMap((map['mirrorAuth'] as Map).cast<String, dynamic>()),
      mirrorCheckMd5: map['mirrorCheckMd5'] == null ? null : map['mirrorCheckMd5'] as bool,
      mirrorDstRegion: map['mirrorDstRegion'] == null ? null : map['mirrorDstRegion'] as String,
      mirrorDstSlaveVpcId: map['mirrorDstSlaveVpcId'] == null ? null : map['mirrorDstSlaveVpcId'] as String,
      mirrorDstVpcId: map['mirrorDstVpcId'] == null ? null : map['mirrorDstVpcId'] as String,
      mirrorFollowRedirect: map['mirrorFollowRedirect'] == null ? null : map['mirrorFollowRedirect'] as bool,
      mirrorHeaders: map['mirrorHeaders'] == null ? null : BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders.fromMap((map['mirrorHeaders'] as Map).cast<String, dynamic>()),
      mirrorIsExpressTunnel: map['mirrorIsExpressTunnel'] == null ? null : map['mirrorIsExpressTunnel'] as bool,
      mirrorMultiAlternates: map['mirrorMultiAlternates'] == null ? null : BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates.fromMap((map['mirrorMultiAlternates'] as Map).cast<String, dynamic>()),
      mirrorPassOriginalSlashes: map['mirrorPassOriginalSlashes'] == null ? null : map['mirrorPassOriginalSlashes'] as bool,
      mirrorPassQueryString: map['mirrorPassQueryString'] == null ? null : map['mirrorPassQueryString'] as bool,
      mirrorProxyPass: map['mirrorProxyPass'] == null ? null : map['mirrorProxyPass'] as bool,
      mirrorReturnHeaders: map['mirrorReturnHeaders'] == null ? null : BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders.fromMap((map['mirrorReturnHeaders'] as Map).cast<String, dynamic>()),
      mirrorRole: map['mirrorRole'] == null ? null : map['mirrorRole'] as String,
      mirrorSaveOssMeta: map['mirrorSaveOssMeta'] == null ? null : map['mirrorSaveOssMeta'] as bool,
      mirrorSni: map['mirrorSni'] == null ? null : map['mirrorSni'] as bool,
      mirrorSwitchAllErrors: map['mirrorSwitchAllErrors'] == null ? null : map['mirrorSwitchAllErrors'] as bool,
      mirrorTaggings: map['mirrorTaggings'] == null ? null : BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings.fromMap((map['mirrorTaggings'] as Map).cast<String, dynamic>()),
      mirrorTunnelId: map['mirrorTunnelId'] == null ? null : map['mirrorTunnelId'] as String,
      mirrorUrl: map['mirrorUrl'] == null ? null : map['mirrorUrl'] as String,
      mirrorUrlProbe: map['mirrorUrlProbe'] == null ? null : map['mirrorUrlProbe'] as String,
      mirrorUrlSlave: map['mirrorUrlSlave'] == null ? null : map['mirrorUrlSlave'] as String,
      mirrorUserLastModified: map['mirrorUserLastModified'] == null ? null : map['mirrorUserLastModified'] as bool,
      mirrorUsingRole: map['mirrorUsingRole'] == null ? null : map['mirrorUsingRole'] as bool,
      passQueryString: map['passQueryString'] == null ? null : map['passQueryString'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      redirectType: map['redirectType'] == null ? null : map['redirectType'] as String,
      replaceKeyPrefixWith: map['replaceKeyPrefixWith'] == null ? null : map['replaceKeyPrefixWith'] as String,
      replaceKeyWith: map['replaceKeyWith'] == null ? null : map['replaceKeyWith'] as String,
      transparentMirrorResponseCodes: map['transparentMirrorResponseCodes'] == null ? null : map['transparentMirrorResponseCodes'] as String,
    );
  }
}

