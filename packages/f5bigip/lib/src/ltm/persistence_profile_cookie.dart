import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_profile_cookie_args.dart';

/// Configures a cookie persistence profile
///
/// ## Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const testPpcookie = new f5bigip.ltm.PersistenceProfileCookie("test_ppcookie", {
///     name: "/Common/terraform_cookie",
///     defaultsFrom: "/Common/cookie",
///     matchAcrossPools: "enabled",
///     matchAcrossServices: "enabled",
///     matchAcrossVirtuals: "enabled",
///     timeout: 3600,
///     overrideConnLimit: "enabled",
///     alwaysSend: "enabled",
///     cookieEncryption: "required",
///     cookieEncryptionPassphrase: "iam",
///     cookieName: "ham",
///     expiration: "1:0:0",
///     hashLength: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_ppcookie = f5bigip.ltm.PersistenceProfileCookie("test_ppcookie",
///     name="/Common/terraform_cookie",
///     defaults_from="/Common/cookie",
///     match_across_pools="enabled",
///     match_across_services="enabled",
///     match_across_virtuals="enabled",
///     timeout=3600,
///     override_conn_limit="enabled",
///     always_send="enabled",
///     cookie_encryption="required",
///     cookie_encryption_passphrase="iam",
///     cookie_name="ham",
///     expiration="1:0:0",
///     hash_length=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testPpcookie = new F5BigIP.Ltm.PersistenceProfileCookie("test_ppcookie", new()
///     {
///         Name = "/Common/terraform_cookie",
///         DefaultsFrom = "/Common/cookie",
///         MatchAcrossPools = "enabled",
///         MatchAcrossServices = "enabled",
///         MatchAcrossVirtuals = "enabled",
///         Timeout = 3600,
///         OverrideConnLimit = "enabled",
///         AlwaysSend = "enabled",
///         CookieEncryption = "required",
///         CookieEncryptionPassphrase = "iam",
///         CookieName = "ham",
///         Expiration = "1:0:0",
///         HashLength = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewPersistenceProfileCookie(ctx, "test_ppcookie", &ltm.PersistenceProfileCookieArgs{
/// 			Name:                       pulumi.String("/Common/terraform_cookie"),
/// 			DefaultsFrom:               pulumi.String("/Common/cookie"),
/// 			MatchAcrossPools:           pulumi.String("enabled"),
/// 			MatchAcrossServices:        pulumi.String("enabled"),
/// 			MatchAcrossVirtuals:        pulumi.String("enabled"),
/// 			Timeout:                    pulumi.Int(3600),
/// 			OverrideConnLimit:          pulumi.String("enabled"),
/// 			AlwaysSend:                 pulumi.String("enabled"),
/// 			CookieEncryption:           pulumi.String("required"),
/// 			CookieEncryptionPassphrase: pulumi.String("iam"),
/// 			CookieName:                 pulumi.String("ham"),
/// 			Expiration:                 pulumi.String("1:0:0"),
/// 			HashLength:                 pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.f5bigip.ltm.PersistenceProfileCookie;
/// import com.pulumi.f5bigip.ltm.PersistenceProfileCookieArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testPpcookie = new PersistenceProfileCookie("testPpcookie", PersistenceProfileCookieArgs.builder()
///             .name("/Common/terraform_cookie")
///             .defaultsFrom("/Common/cookie")
///             .matchAcrossPools("enabled")
///             .matchAcrossServices("enabled")
///             .matchAcrossVirtuals("enabled")
///             .timeout(3600)
///             .overrideConnLimit("enabled")
///             .alwaysSend("enabled")
///             .cookieEncryption("required")
///             .cookieEncryptionPassphrase("iam")
///             .cookieName("ham")
///             .expiration("1:0:0")
///             .hashLength(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testPpcookie:
///     type: f5bigip:ltm:PersistenceProfileCookie
///     name: test_ppcookie
///     properties:
///       name: /Common/terraform_cookie
///       defaultsFrom: /Common/cookie
///       matchAcrossPools: enabled
///       matchAcrossServices: enabled
///       matchAcrossVirtuals: enabled
///       timeout: 3600
///       overrideConnLimit: enabled
///       alwaysSend: enabled
///       cookieEncryption: required
///       cookieEncryptionPassphrase: iam
///       cookieName: ham
///       expiration: 1:0:0
///       hashLength: 0
/// ```
///
///
/// ## Reference
///
/// `name` - (Required) Name of the virtual address
///
/// `defaults_from` - (Required) Parent cookie persistence profile
///
/// `match_across_pools` (Optional) (enabled or disabled) match across pools with given persistence record
///
/// `match_across_services` (Optional) (enabled or disabled) match across services with given persistence record
///
/// `match_across_virtuals` (Optional) (enabled or disabled) match across virtual servers with given persistence record
///
/// `method` (Optional) Specifies the type of cookie processing that the system uses. The default value is insert
///
/// `mirror` (Optional) (enabled or disabled) mirror persistence record
///
/// `timeout` (Optional) (enabled or disabled) Timeout for persistence of the session in seconds
///
/// `override_conn_limit` (Optional) (enabled or disabled) Enable or dissable pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
///
/// `always_send` (Optional) (enabled or disabled) always send cookies
///
/// `cookie_encryption` (Optional) (required, preferred, or disabled) To required, preferred, or disabled policy for cookie encryption
///
/// `cookie_encryption_passphrase` (Optional) (required, preferred, or disabled) Passphrase for encrypted cookies. The field is encrypted on the server and will always return differently then set.
/// If this is configured specify `ignore_changes` under the `lifecycle` block to ignore returned encrypted value.
///
/// `cookie_name` (Optional) Name of the cookie to track persistence
///
/// `expiration` (Optional) Expiration TTL for cookie specified in DAY:HOUR:MIN:SECONDS (Examples: 1:0:0:0 one day, 1:0:0 one hour, 30:0 thirty minutes)
///
/// `hash_length` (Optional) (Integer) Length of hash to apply to cookie
///
/// `hash_offset` (Optional) (Integer) Number of characters to skip in the cookie for the hash
///
/// `httponly` (Optional) (enabled or disabled) Sending only over http
///
/// ## Importing
///
/// An cookie persistence profile can be imported into this resource by supplying the Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_persistence_profile_cookie.test_ppcookie "/Common/terraform_cookie"
/// ```
class PersistenceProfileCookie extends pulumi.CustomResource {
  /// To enable _ disable always sending cookies
  late final pulumi.Output<String> alwaysSend;
  late final pulumi.Output<String> appService;
  /// To required, preferred, or disabled policy for cookie encryption
  late final pulumi.Output<String> cookieEncryption;
  /// Passphrase for encrypted cookies
  late final pulumi.Output<String> cookieEncryptionPassphrase;
  /// Name of the cookie to track persistence
  late final pulumi.Output<String> cookieName;
  /// Inherit defaults from parent profile
  late final pulumi.Output<String> defaultsFrom;
  /// Expiration TTL for cookie specified in D:H:M:S or in seconds
  late final pulumi.Output<String> expiration;
  /// Length of hash to apply to cookie
  late final pulumi.Output<int> hashLength;
  /// Number of characters to skip in the cookie for the hash
  late final pulumi.Output<int> hashOffset;
  /// To enable _ disable sending only over http
  late final pulumi.Output<String> httponly;
  /// To enable _ disable match across pools with given persistence record
  late final pulumi.Output<String> matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  late final pulumi.Output<String> matchAcrossServices;
  /// To enable _ disable match across virtual servers with given persistence record
  late final pulumi.Output<String> matchAcrossVirtuals;
  /// Specifies the type of cookie processing that the system uses
  late final pulumi.Output<String> method;
  /// To enable _ disable
  late final pulumi.Output<String> mirror;
  /// Name of the persistence profile
  late final pulumi.Output<String> name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  late final pulumi.Output<String> overrideConnLimit;
  /// Timeout for persistence of the session
  late final pulumi.Output<int> timeout;

  /// Creates a new [PersistenceProfileCookie].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersistenceProfileCookie]. {@macro pulumi_ltm_persistence_profile_cookie_persistence_profile_cookie_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersistenceProfileCookie(
    String name, {
    PersistenceProfileCookieArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/persistenceProfileCookie:PersistenceProfileCookie',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alwaysSend = registerOutput<String>('alwaysSend');
    this.appService = registerOutput<String>('appService');
    this.cookieEncryption = registerOutput<String>('cookieEncryption');
    this.cookieEncryptionPassphrase = registerOutput<String>('cookieEncryptionPassphrase');
    this.cookieName = registerOutput<String>('cookieName');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.expiration = registerOutput<String>('expiration');
    this.hashLength = registerOutput<int>('hashLength');
    this.hashOffset = registerOutput<int>('hashOffset');
    this.httponly = registerOutput<String>('httponly');
    this.matchAcrossPools = registerOutput<String>('matchAcrossPools');
    this.matchAcrossServices = registerOutput<String>('matchAcrossServices');
    this.matchAcrossVirtuals = registerOutput<String>('matchAcrossVirtuals');
    this.method = registerOutput<String>('method');
    this.mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    this.overrideConnLimit = registerOutput<String>('overrideConnLimit');
    this.timeout = registerOutput<int>('timeout');
  }
}
