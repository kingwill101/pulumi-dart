// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_auth.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_headers.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_multi_alternates.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_return_headers.dart';
import 'bucket_website_routing_rules_routing_rule_redirect_mirror_taggings.dart';

class BucketWebsiteRoutingRulesRoutingRuleRedirect {
  /// If this field is set to true, the prefix of Object is replaced with the value specified by ReplaceKeyPrefixWith. If this field is not specified or is blank, the Object prefix is truncated.
  final pulumi.Input<bool>? enableReplacePrefix;
  /// The domain name during the jump. The domain name must comply with the domain name specification.
  final pulumi.Input<String>? hostName;
  /// The status code returned during the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  final pulumi.Input<String>? httpRedirectCode;
  /// Image back-to-source allows getting Image information
  final pulumi.Input<bool>? mirrorAllowGetImageInfo;
  /// Whether to allow HeadObject in image back-to-source
  final pulumi.Input<bool>? mirrorAllowHeadObject;
  /// Mirror back-to-source allows support for video frame truncation
  final pulumi.Input<bool>? mirrorAllowVideoSnapshot;
  /// The status code of the mirror back-to-source trigger asynchronous pull mode.
  final pulumi.Input<int>? mirrorAsyncStatus;
  /// Image back Source station authentication information See `mirror_auth` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth>? mirrorAuth;
  /// Whether to check the MD5 of the source body. It takes effect only when the RedirectType is set to Mirror.
  final pulumi.Input<bool>? mirrorCheckMd5;
  /// Mirrored back-to-source high-speed Channel vpregion
  final pulumi.Input<String>? mirrorDstRegion;
  /// Mirroring back-to-source high-speed Channel standby station VpcId
  final pulumi.Input<String>? mirrorDstSlaveVpcId;
  /// Mirror back-to-source high-speed Channel VpcId
  final pulumi.Input<String>? mirrorDstVpcId;
  /// If the result of the image back-to-source acquisition is 3xx, whether to continue to jump to the specified Location to obtain data. It takes effect only when the RedirectType is set to Mirror.
  final pulumi.Input<bool>? mirrorFollowRedirect;
  /// Specifies the Header carried when the image returns to the source. It takes effect only when the RedirectType is set to Mirror. See `mirror_headers` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders>? mirrorHeaders;
  /// Whether it is a mirror back-to-source high-speed Channel
  final pulumi.Input<bool>? mirrorIsExpressTunnel;
  /// Mirror back-to-source multi-source station configuration container. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_multi_alternates` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates>? mirrorMultiAlternates;
  /// Transparent transmission/to source Station
  final pulumi.Input<bool>? mirrorPassOriginalSlashes;
  /// Same as PassQueryString and takes precedence over PassQueryString. It takes effect only when the RedirectType is set to Mirror.
  final pulumi.Input<bool>? mirrorPassQueryString;
  /// Whether mirroring back to source does not save data
  final pulumi.Input<bool>? mirrorProxyPass;
  /// The container that saves the image back to the source and returns the response header rule. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_return_headers` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders>? mirrorReturnHeaders;
  /// Roles used when mirroring back-to-source
  final pulumi.Input<String>? mirrorRole;
  /// Mirror back-to-source back-to-source OSS automatically saves user metadata
  final pulumi.Input<bool>? mirrorSaveOssMeta;
  /// Transparent transmission of SNI
  final pulumi.Input<bool>? mirrorSni;
  /// It is used to judge the status of active-standby switching. The judgment logic of active-standby switching is that the source station returns an error. If MirrorSwitchAllErrors is true, it is considered a failure except the following status code: 200,206,301,302,303,307,404; If false, only the source Station Returns 5xx or times out is considered a failure.
  final pulumi.Input<bool>? mirrorSwitchAllErrors;
  /// Save the label according to the parameters when saving the file from the mirror back to the source. **NOTE:**: If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. See `mirror_taggings` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings>? mirrorTaggings;
  /// Mirror back-to-source leased line back-to-source tunnel ID
  final pulumi.Input<String>? mirrorTunnelId;
  /// The address of the origin of the image. It takes effect only when the RedirectType is set to Mirror. The origin address must start with http:// or https:// and end with a forward slash (/). OSS takes the Object name after the Origin address to form the origin URL.
  final pulumi.Input<String>? mirrorUrl;
  /// Mirror back-to-source Master-backup back-to-source switching decision URL
  final pulumi.Input<String>? mirrorUrlProbe;
  /// Mirror back-to-source primary backup back-to-source backup station URL
  final pulumi.Input<String>? mirrorUrlSlave;
  /// Whether the source station LastModifiedTime is used for the image back-to-source save file.
  final pulumi.Input<bool>? mirrorUserLastModified;
  /// Whether to use role for mirroring back to source
  final pulumi.Input<bool>? mirrorUsingRole;
  /// Whether to carry the request parameters when executing the jump or mirror back-to-source rule. Did the user carry the request parameters when requesting OSS? a = B & c = d, and set PassQueryString to true. If the rule is a 302 jump, this request parameter is added to the Location header of the jump. For example Location:example.com? a = B & c = d, and the jump type is mirrored back-to-origin, this request parameter is also carried in the back-to-origin request initiated. Values: true, false (default)
  final pulumi.Input<bool>? passQueryString;
  /// The protocol at the time of the jump. It takes effect only when the RedirectType is set to External or AliCDN.
  final pulumi.Input<String>? protocol;
  /// Specifies the type of jump. The value range is as follows: Mirror: Mirror back to the source. External: External redirects, that is, OSS returns a 3xx request to redirect to another address. AliCDN: Alibaba Cloud CDN jump, mainly used for Alibaba Cloud CDN. Unlike External, OSS adds an additional Header. After recognizing this Header, Alibaba Cloud CDN redirects the data to the specified address and returns the obtained data to the user instead of returning the 3xx Redirection request to the user.
  final pulumi.Input<String>? redirectType;
  /// The prefix of the Object name will be replaced with this value during Redirect. If the prefix is empty, this string is inserted in front of the Object name.
  final pulumi.Input<String>? replaceKeyPrefixWith;
  /// During redirection, the Object name is replaced with the value specified by ReplaceKeyWith. You can set variables in ReplaceKeyWith. Currently, the supported variable is ${key}, which indicates the name of the Object in the request.
  final pulumi.Input<String>? replaceKeyWith;
  /// Mirror back-to-source transparent source station response code list
  final pulumi.Input<String>? transparentMirrorResponseCodes;

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
  const BucketWebsiteRoutingRulesRoutingRuleRedirect({
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
      'mirrorAuth': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth, Map<String, dynamic>>(mirrorAuth, (value) => value.toMap()),
      'mirrorCheckMd5': ?mirrorCheckMd5,
      'mirrorDstRegion': ?mirrorDstRegion,
      'mirrorDstSlaveVpcId': ?mirrorDstSlaveVpcId,
      'mirrorDstVpcId': ?mirrorDstVpcId,
      'mirrorFollowRedirect': ?mirrorFollowRedirect,
      'mirrorHeaders': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders, Map<String, dynamic>>(mirrorHeaders, (value) => value.toMap()),
      'mirrorIsExpressTunnel': ?mirrorIsExpressTunnel,
      'mirrorMultiAlternates': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates, Map<String, dynamic>>(mirrorMultiAlternates, (value) => value.toMap()),
      'mirrorPassOriginalSlashes': ?mirrorPassOriginalSlashes,
      'mirrorPassQueryString': ?mirrorPassQueryString,
      'mirrorProxyPass': ?mirrorProxyPass,
      'mirrorReturnHeaders': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders, Map<String, dynamic>>(mirrorReturnHeaders, (value) => value.toMap()),
      'mirrorRole': ?mirrorRole,
      'mirrorSaveOssMeta': ?mirrorSaveOssMeta,
      'mirrorSni': ?mirrorSni,
      'mirrorSwitchAllErrors': ?mirrorSwitchAllErrors,
      'mirrorTaggings': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings, Map<String, dynamic>>(mirrorTaggings, (value) => value.toMap()),
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
      enableReplacePrefix: (() { final guardedValue = map['enableReplacePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpRedirectCode: (() { final guardedValue = map['httpRedirectCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorAllowGetImageInfo: (() { final guardedValue = map['mirrorAllowGetImageInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorAllowHeadObject: (() { final guardedValue = map['mirrorAllowHeadObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorAllowVideoSnapshot: (() { final guardedValue = map['mirrorAllowVideoSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorAsyncStatus: (() { final guardedValue = map['mirrorAsyncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mirrorAuth: (() { final guardedValue = map['mirrorAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorCheckMd5: (() { final guardedValue = map['mirrorCheckMd5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorDstRegion: (() { final guardedValue = map['mirrorDstRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorDstSlaveVpcId: (() { final guardedValue = map['mirrorDstSlaveVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorDstVpcId: (() { final guardedValue = map['mirrorDstVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorFollowRedirect: (() { final guardedValue = map['mirrorFollowRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorHeaders: (() { final guardedValue = map['mirrorHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorIsExpressTunnel: (() { final guardedValue = map['mirrorIsExpressTunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorMultiAlternates: (() { final guardedValue = map['mirrorMultiAlternates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorPassOriginalSlashes: (() { final guardedValue = map['mirrorPassOriginalSlashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorPassQueryString: (() { final guardedValue = map['mirrorPassQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorProxyPass: (() { final guardedValue = map['mirrorProxyPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorReturnHeaders: (() { final guardedValue = map['mirrorReturnHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorRole: (() { final guardedValue = map['mirrorRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorSaveOssMeta: (() { final guardedValue = map['mirrorSaveOssMeta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorSni: (() { final guardedValue = map['mirrorSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorSwitchAllErrors: (() { final guardedValue = map['mirrorSwitchAllErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorTaggings: (() { final guardedValue = map['mirrorTaggings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorTunnelId: (() { final guardedValue = map['mirrorTunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorUrl: (() { final guardedValue = map['mirrorUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorUrlProbe: (() { final guardedValue = map['mirrorUrlProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorUrlSlave: (() { final guardedValue = map['mirrorUrlSlave']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorUserLastModified: (() { final guardedValue = map['mirrorUserLastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mirrorUsingRole: (() { final guardedValue = map['mirrorUsingRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passQueryString: (() { final guardedValue = map['passQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectType: (() { final guardedValue = map['redirectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceKeyPrefixWith: (() { final guardedValue = map['replaceKeyPrefixWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceKeyWith: (() { final guardedValue = map['replaceKeyWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentMirrorResponseCodes: (() { final guardedValue = map['transparentMirrorResponseCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

