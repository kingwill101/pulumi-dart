import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_properties_response.dart';
import 'system_data_response.dart';

/// Project tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Projects_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.Discovery.Project("project", new()
///     {
///         Location = "uksouth",
///         ProjectName = "55cdd016d5653ebf82",
///         Properties = new AzureNative.Discovery.Inputs.ProjectPropertiesArgs
///         {
///             Settings = new AzureNative.Discovery.Inputs.ProjectSettingsArgs
///             {
///                 BehaviorPreferences = "zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun",
///             },
///             StorageContainerIds = new[]
///             {
///                 "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12",
///             },
///         },
///         ResourceGroupName = "rgdiscovery",
///         Tags =
///         {
///             { "key717", "tdn" },
///         },
///         WorkspaceName = "1cf6d2a754acbb9655",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewProject(ctx, "project", &discovery.ProjectArgs{
/// 			Location:    pulumi.String("uksouth"),
/// 			ProjectName: pulumi.String("55cdd016d5653ebf82"),
/// 			Properties: &discovery.ProjectPropertiesArgs{
/// 				Settings: &discovery.ProjectSettingsArgs{
/// 					BehaviorPreferences: pulumi.String("zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun"),
/// 				},
/// 				StorageContainerIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			Tags: pulumi.StringMap{
/// 				"key717": pulumi.String("tdn"),
/// 			},
/// 			WorkspaceName: pulumi.String("1cf6d2a754acbb9655"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_discovery_project" "project" {
///   location     = "uksouth"
///   project_name = "55cdd016d5653ebf82"
///   properties = {
///     settings = {
///       behavior_preferences = "zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun"
///     }
///     storage_container_ids = ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12"]
///   }
///   resource_group_name = "rgdiscovery"
///   tags = {
///     "key717" = "tdn"
///   }
///   workspace_name = "1cf6d2a754acbb9655"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.discovery.Project;
/// import com.pulumi.azurenative.discovery.ProjectArgs;
/// import com.pulumi.azurenative.discovery.inputs.ProjectPropertiesArgs;
/// import com.pulumi.azurenative.discovery.inputs.ProjectSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .location("uksouth")
///             .projectName("55cdd016d5653ebf82")
///             .properties(ProjectPropertiesArgs.builder()
///                 .settings(ProjectSettingsArgs.builder()
///                     .behaviorPreferences("zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun")
///                     .build())
///                 .storageContainerIds("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .tags(Map.of("key717", "tdn"))
///             .workspaceName("1cf6d2a754acbb9655")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const project = new azure_native.discovery.Project("project", {
///     location: "uksouth",
///     projectName: "55cdd016d5653ebf82",
///     properties: {
///         settings: {
///             behaviorPreferences: "zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun",
///         },
///         storageContainerIds: ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12"],
///     },
///     resourceGroupName: "rgdiscovery",
///     tags: {
///         key717: "tdn",
///     },
///     workspaceName: "1cf6d2a754acbb9655",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.discovery.Project("project",
///     location="uksouth",
///     project_name="55cdd016d5653ebf82",
///     properties={
///         "settings": {
///             "behavior_preferences": "zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun",
///         },
///         "storage_container_ids": ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12"],
///     },
///     resource_group_name="rgdiscovery",
///     tags={
///         "key717": "tdn",
///     },
///     workspace_name="1cf6d2a754acbb9655")
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:discovery:Project
///     properties:
///       location: uksouth
///       projectName: 55cdd016d5653ebf82
///       properties:
///         settings:
///           behaviorPreferences: zjhzrtkwdmwbueseguplzpxeqvbqrknwvxxgtwtpldnguihcbprdwsihucbrmhyvmxuvldlgtrheqehrpcmdqtjknlyjnzdvphjicifbuvlsjgoaiaeunshmuupogxhwywntzhdvrdkknumgyofeltjqyenfiemerqsafaphhzgkwqrnuhbxklclishnnailctvcdjzvfroakitqkmllziocaolmyvytjmqhivljovriyicparifitswaynjsczcpfsgwyjsojiwqzauscpgmxqhznkofwydrjauiwkwkjrvclbufqmzyftfwjkymalhwkpiabljammjstpsknxqouabruobyznqnscucrvurarbbtefmaqiqfkyykuifojikmnkfgnjyagxwpjilfjyfpkqjdgrupitpqbvebmhsizeomzxqekqbsqqnlkefolbgbnfavtliixrvqxcbcxrxnpozucsvseddpjzsydiebyxxdehaniinfvfbflqwmyqelsjquigikebmfuuhdervonditfsummrsuokoqtessdmwptawejkqkkmtzgomamsbcbpviejbirvdwbcoenrsxeyayglvygsknetjuxdmbroritqklncrrnstwuaoohrqnypxfgbvfofsabnrgofobhdkktjyuhrxzmkrwglqczjlrfxbcbrplqmocjbphkjpdfxrfpkfrvlqqmiwftsuhxmjpimvngakbpkcvdevwubfqjjpnjmoiruabwxtzqehlwangolxjeqzjbfxltrgchuiginrgaeaztcqwacogzhvuhxcolvlzmoulikspebsdjyqlzgrtkqobkszfspnjftmnzsbyctxhkjsyemlehnqqhvvfdtrfarpjgaklmvbwukaykstipsnejnpnwaxskppilmgcdebupwpyyqajergevjizlhkiinvvqojrnegwbilhaktgjfkkefnwfbcxmjgylidekqjvgkxvnxdrttxzoyndupwqvlebbfgyiddgixrhcdbfkgakpausgcmjsgpqsjonrrrodgzzkworpvxzjzgtdbzqerqwjhjwoescduqwdwxsgmgyxolhlpdhuvscmzuuiynntspcyjlyngexpardjklyycnyquvbtfwlnqzxujowoljfvpnbyyoqiblxiiojiaeqpoblnrgttqmjqvqjaawevmbxgmbsaumjutbxhywkvhrljzcpitnunwfvtyiglqwlcngffnzdnfvccfqgdiazxoxgsepfqlyoxnofvogtsudsxarqpxhpidrwbykeypszgcbbyshljhlxperpdysagbmumexubjzimbetfayqfcbdkdpfsqrfuisioggdewxmeuihqitkwqfvmmwfppxfoigaoskgzedlhtmjagcbvwwnfkeyocceioccfjmxvtjutydhwapxkgdgjxuquujkdjtbkwhrlbxgclyqdcdnexitthelxajidteqtahvjwoovaripeuzycrdazmmzvpcecahnyentvdqdfteddmddcllromsumkucqhcgdelqsotimumwulnplxqeckhwgngafyvjlykdyotciabfkkdbqlfgwxkjreelzdswbaqzhiweqopubmxlestbvcrdimtiyleisfsvheanokuaipbniseceonfqlbrfofrhbuwtuirnrooflajdyrzwgcmpztgeyzrgvohijxrwrgsmfxagjuuygqtbyilneezxkmcbjoyhljlnesiuhgznvxzglpemwqfpixqlppehxeqzwhuxfcknkmpfttpywxaimzrsfalarhtoiwenlulyoadfdcyvsahzngcashxrchwrxknrvzhldforskqsktvltfuuxhummulwcfvezmfedfobzyfryrrzbypsvakkgppvhhicjydgzmnhcxsfqrdwgbmitmzzmjyzgvzusjigujfohqdlgmrtxmvvxoaxyfiyrgvfawkyynjykpmejzqmrpzitetxhqcjrqspglkzricplkrecaiumajvsobcddohclhmyinyteblkxqoqnoiyfwspencqszjbsnpyokusxgptshytgzqkynhncmqgrxaeugwyzxxqubfdkozfqrdeveopnhyvjcpjziogeyinlvcbhwltteivcnkfehvatnbvkfoqedljupaxholukhagwcasdgagdhpmkiumdclzstyexknhlojeoqkuejmnbuhdwgskgbqfomxvkgziun
///         storageContainerIds:
///           - /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/storageContainers/storageContainer12
///       resourceGroupName: rgdiscovery
///       tags:
///         key717: tdn
///       workspaceName: 1cf6d2a754acbb9655
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:discovery:Project 55cdd016d5653ebf82 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/workspaces/{workspaceName}/projects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ProjectPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_discovery_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProjectPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'azure-native:discovery:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProjectPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
