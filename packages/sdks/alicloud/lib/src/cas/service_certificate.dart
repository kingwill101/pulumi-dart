import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_certificate_args.dart';
import 'service_certificate_state.dart';

/// Provides a SSL Certificates Certificate resource.
///
///
///
/// For information about SSL Certificates Certificate and how to use it, see [What is Certificate](https://www.alibabacloud.com/help/product/28533.html).
///
/// &gt; **NOTE:** Available since v1.129.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultServiceCertificate = new alicloud.cas.ServiceCertificate("default", {
///     certificateName: `terraform-example-${_default.result}`,
///     cert: `-----BEGIN CERTIFICATE-----
/// MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
/// MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
/// c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
/// Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
/// DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
/// AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
/// 6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
/// dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
/// sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
/// //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
/// VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
/// VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
/// wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
/// L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
/// L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
/// AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
/// yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
/// 06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
/// Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
/// 8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
/// ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
/// -----END CERTIFICATE-----
/// `,
///     key: `-----BEGIN PRIVATE KEY-----
/// MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
/// m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
/// SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
/// ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
/// XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
/// GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
/// azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
/// BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
/// cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
/// blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
/// rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
/// 48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
/// Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
/// aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
/// ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
/// Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
/// G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
/// jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
/// 3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
/// 2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
/// qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
/// AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
/// 9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
/// /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
/// xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
/// -----END PRIVATE KEY-----
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_service_certificate = alicloud.cas.ServiceCertificate("default",
///     certificate_name=f"terraform-example-{default['result']}",
///     cert="""-----BEGIN CERTIFICATE-----
/// MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
/// MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
/// c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
/// Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
/// DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
/// AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
/// 6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
/// dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
/// sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
/// //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
/// VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
/// VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
/// wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
/// L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
/// L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
/// AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
/// yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
/// 06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
/// Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
/// 8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
/// ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
/// -----END CERTIFICATE-----
/// """,
///     key="""-----BEGIN PRIVATE KEY-----
/// MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
/// m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
/// SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
/// ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
/// XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
/// GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
/// azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
/// BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
/// cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
/// blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
/// rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
/// 48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
/// Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
/// aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
/// ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
/// Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
/// G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
/// jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
/// 3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
/// 2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
/// qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
/// AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
/// 9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
/// /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
/// xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
/// -----END PRIVATE KEY-----
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultServiceCertificate = new AliCloud.Cas.ServiceCertificate("default", new()
///     {
///         CertificateName = $"terraform-example-{@default.Result}",
///         Cert = @"-----BEGIN CERTIFICATE-----
/// MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
/// MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
/// c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
/// Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
/// DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
/// AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
/// 6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
/// dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
/// sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
/// //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
/// VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
/// VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
/// wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
/// L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
/// L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
/// AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
/// yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
/// 06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
/// Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
/// 8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
/// ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
/// -----END CERTIFICATE-----
/// ",
///         Key = @"-----BEGIN PRIVATE KEY-----
/// MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
/// m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
/// SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
/// ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
/// XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
/// GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
/// azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
/// BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
/// cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
/// blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
/// rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
/// 48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
/// Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
/// aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
/// ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
/// Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
/// G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
/// jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
/// 3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
/// 2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
/// qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
/// AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
/// 9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
/// /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
/// xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
/// -----END PRIVATE KEY-----
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cas"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cas.NewServiceCertificate(ctx, "default", &cas.ServiceCertificateArgs{
/// 			CertificateName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Cert: pulumi.String(`-----BEGIN CERTIFICATE-----
/// MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
/// MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
/// c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
/// Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
/// DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
/// AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
/// 6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
/// dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
/// sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
/// //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
/// VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
/// VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
/// wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
/// L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
/// L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
/// AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
/// yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
/// 06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
/// Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
/// 8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
/// ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
/// -----END CERTIFICATE-----
/// `),
/// 			Key: pulumi.String(`-----BEGIN PRIVATE KEY-----
/// MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
/// m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
/// SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
/// ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
/// XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
/// GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
/// azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
/// BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
/// cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
/// blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
/// rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
/// 48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
/// Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
/// aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
/// ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
/// Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
/// G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
/// jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
/// 3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
/// 2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
/// qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
/// AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
/// 9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
/// /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
/// xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
/// -----END PRIVATE KEY-----
/// `),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cas.ServiceCertificate;
/// import com.pulumi.alicloud.cas.ServiceCertificateArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultServiceCertificate = new ServiceCertificate("defaultServiceCertificate", ServiceCertificateArgs.builder()
///             .certificateName(String.format("terraform-example-%s", default_.result()))
///             .cert("""
/// -----BEGIN CERTIFICATE-----
/// MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
/// MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
/// c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
/// Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
/// DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
/// AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
/// 6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
/// dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
/// sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
/// //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
/// VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
/// VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
/// wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
/// L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
/// L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
/// AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
/// yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
/// 06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
/// Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
/// 8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
/// ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
/// -----END CERTIFICATE-----
///             """)
///             .key("""
/// -----BEGIN PRIVATE KEY-----
/// MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
/// m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
/// SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
/// ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
/// XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
/// GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
/// azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
/// BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
/// cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
/// blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
/// rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
/// 48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
/// Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
/// aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
/// ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
/// Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
/// G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
/// jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
/// 3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
/// 2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
/// qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
/// AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
/// 9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
/// /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
/// xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
/// -----END PRIVATE KEY-----
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultServiceCertificate:
///     type: alicloud:cas:ServiceCertificate
///     name: default
///     properties:
///       certificateName: terraform-example-${default.result}
///       cert: |
///         -----BEGIN CERTIFICATE-----
///         MIID1jCCAr6gAwIBAgIQQ7/8/QOOTbywxdgSX9aMqDANBgkqhkiG9w0BAQsFADBe
///         MQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl
///         c3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe
///         Fw0yNTA5MjIwNTU3NDVaFw0zMDA5MjEwNTU3NDVaMCAxCzAJBgNVBAYTAkNOMREw
///         DwYDVQQDEwgxNjg4LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
///         AMEl04gKBqJxV+8KideZb7S4mPysehPzr/cXu4i1RXT7UFtNVZuqc4IdIzOja2SU
///         6uNn8mY6Pfc5FNybg98bYx0ADbub55TUaw2Pz1CFEbiMvLpzMkp4EZadvmJWZk8t
///         dNb+ClKqdXUWhxApS3Lz+wjCNYQnlODk4KmxmM8/U/CyQS7lgWS/1G72UFB09Skg
///         sfvWdoHLrFfIlbVkp9XVELCtOkjj8Nn/rPOhc31NbstrwV4Whl6jngGAkaEtImJ7
///         //sL+sPPsutefCgfZPrC+Zwru2En1BuIo5KW02NYLdjXbABH8xjkUobqRoro7eY3
///         VySBr7adD6QmNv5hWohOuykCAwEAAaOBzTCByjAOBgNVHQ8BAf8EBAMCBaAwHQYD
///         VR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiBJgXRNBo/
///         wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYVaHR0cDov
///         L29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlzc2wuY29t
///         L215c3NsdGVzdHJzYS5jcnQwEwYDVR0RBAwwCoIIMTY4OC5jb20wDQYJKoZIhvcN
///         AQELBQADggEBAHa0ATVeHtPPw1+a6kajlW6OQUjhiJg+Sk9fVA1eJ2Hzl1yDDw3K
///         yAyl1gkxGI6BwWdX/C8IE6PuPYcG2CmJGoFoEAAIbAE76AKABvHoA8I6wyDruxFz
///         06bNM8104TxAHTxe2zaHgBQnYIRk07uA8gxjZKFp1//eYbxj8HiP0Q9zXqYjF79G
///         Le4PDw7Q6U22CP+cT9Sz5ZEoJCzmUtx3uQWhLzNxvyISrXeSqAFJzjtL0KKSR1cr
///         8he6FoeU37oKdmrnweLeBe+no3OMChETa2JN4VAzXj/nPpQcyB7nXDfLUHe01+BB
///         ZBXKFLD2H38e97mFl/7mgNP5Nc1sycI5Sp4=
///         -----END CERTIFICATE-----
///       key: |
///         -----BEGIN PRIVATE KEY-----
///         MIIEowIBAAKCAQEAwSXTiAoGonFX7wqJ15lvtLiY/Kx6E/Ov9xe7iLVFdPtQW01V
///         m6pzgh0jM6NrZJTq42fyZjo99zkU3JuD3xtjHQANu5vnlNRrDY/PUIURuIy8unMy
///         SngRlp2+YlZmTy101v4KUqp1dRaHEClLcvP7CMI1hCeU4OTgqbGYzz9T8LJBLuWB
///         ZL/UbvZQUHT1KSCx+9Z2gcusV8iVtWSn1dUQsK06SOPw2f+s86FzfU1uy2vBXhaG
///         XqOeAYCRoS0iYnv/+wv6w8+y6158KB9k+sL5nCu7YSfUG4ijkpbTY1gt2NdsAEfz
///         GORShupGiujt5jdXJIGvtp0PpCY2/mFaiE67KQIDAQABAoIBAAKF9CZTUd8zvDKE
///         azo/Ur0Zf5omxgOBC/vzj0DLyXKr89KgMdhHmPG1YBKFIIU0XYCHXkclR05LAcbu
///         BdeCJpXS5zBbwDdAB9P/XHXQqeNvfJRc++ZgJ4QAXzkuqBssXK87ALcwFeUShxot
///         cphiWpW0inlwVkVn3WLUzfUV0+ARljn8VOf+aAmfCiQMl4gsBpvD3dxF84aihS+1
///         blqar5dE1GCJWHW67R1uSaAqHf7nwbBkZY8nTWF8n4+ELAAtlOgQKZlrQ+JxB3Ar
///         rWzgMj4M6F1/man1y/XPR56px9Xv3DwBZHuLufsqPr10q/nI9VIIQHe49sFgnN4+
///         48Q7wIECgYEAwxlrgBJI8gua4mJZxJRT8gBv2Mb1Kk1k7HVX11I+yF4eXr+cm+24
///         Cq7MjqmBXSnqvdQkwGFZ+C3cTKXJBPONWGF8NgiXaHSKjPEoFuHLdKBpgZMAax/L
///         aZBQRw6g12nz3XUCK0DE0wGgPkoDxc65s4NEWS+ua43LZ4TUOzWwwWECgYEA/XB1
///         ARNHyARy+P3iTeebh3t7qJoNoptLWHMlKjSjIZ1VZ4+9ilKsi5ZKVkPaLIjo8MGv
///         Ank3vzSrFSYhId0XfmSqoWySWc0eBkc6NERvopxuIV1WwRKf/18lLhxiEjHIcgds
///         G2KmfeiXdCKSgGlWvJmLITY4gJpOYMjpEDxipskCgYAdxnljmGbNmfvPZRcyKzkM
///         jAiF2wd7p0gp1lbLo9+1ELgt2ax7F7Ko3riVZUU7BLSwt/nL6o+iks02XW7qdIkz
///         3dzpGjKRXIfwrrVhmKBGclzny5mav8V5nO7DiXX+qkrvl3X3R/FCCtN77ivZOo2Y
///         2gXKXr6N55wNdnY1eyI4wQKBgQDXjZo2O+vFVuNimqyrjd1eMcxO7hfCwUooBGcL
///         qpFEucg1uK+Awig24LCBBly9nARjIJh1Bhw/58/KwQ9U+fJNcdkeSnV/I1HyDQqY
///         AczhBSM2BWkP9YNXc9jvivxudSECuwVblV/9nqGSCQWJag53gjAvIyqTVqpq7vYq
///         9PEC4QKBgGY2pj0ZNqGkq16jD3iS+DDBpX+TPnoHzu5GZCM/1GLZ6xXbpNWtZQt4
///         /m+6koRWeGvNAULnp8RSnhBzm+ZglpbwYcvsqRNDqIPGhJ2JruVA/bY3S0ebkRlD
///         xDn0dJVMvNyRR83ZpjTQhxoq5l56TN5xk1vdJ9nZdwJMmXiz2TrA
///         -----END PRIVATE KEY-----
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SSL Certificates Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cas/serviceCertificate:ServiceCertificate example <id>
/// ```
class ServiceCertificate extends pulumi.CustomResource {
  /// The content of a non-SM certificate in PEM format.
  late final pulumi.Output<String?> cert;

  /// A custom name for the certificate. The name can be up to 64 characters long and can contain any character type, such as letters, numbers, and underscores. **NOTE:** From version 1.260.1, `certificate_name` can be modified.
  late final pulumi.Output<String> certificateName;

  /// The content of an SM encryption certificate in PEM format.
  late final pulumi.Output<String?> encryptCert;

  /// The private key of an SM encryption certificate in PEM format.
  late final pulumi.Output<String?> encryptPrivateKey;

  /// The private key of a non-SM certificate in PEM format.
  late final pulumi.Output<String?> key;

  /// Field `lang` has been deprecated from provider version 1.260.1 and it will be removed in the future version.
  late final pulumi.Output<String?> lang;

  /// Field `name` has been deprecated from provider version 1.129.0 and it will be removed in the future version. Please use the new attribute `certificate_name` instead.
  late final pulumi.Output<String> name;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The content of an SM signing certificate in PEM format.
  late final pulumi.Output<String?> signCert;

  /// The private key of an SM signing certificate in PEM format.
  late final pulumi.Output<String?> signPrivateKey;

  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ServiceCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCertificate]. {@macro pulumi_cas_service_certificate_service_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCertificate(
    String name, {
    ServiceCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cas/serviceCertificate:ServiceCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cert = registerOutput<String?>('cert');
    certificateName = registerOutput<String>('certificateName');
    encryptCert = registerOutput<String?>('encryptCert');
    encryptPrivateKey = registerOutput<String?>('encryptPrivateKey');
    key = registerOutput<String?>('key');
    lang = registerOutput<String?>('lang');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    signCert = registerOutput<String?>('signCert');
    signPrivateKey = registerOutput<String?>('signPrivateKey');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ServiceCertificate] resource's state with the given [name] and [id].
  static ServiceCertificate get(
    String name,
    pulumi.Input<String> id, {
    ServiceCertificateState? state,
  }) {
    return ServiceCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cas/serviceCertificate:ServiceCertificate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cert = registerOutput<String?>('cert');
    certificateName = registerOutput<String>('certificateName');
    encryptCert = registerOutput<String?>('encryptCert');
    encryptPrivateKey = registerOutput<String?>('encryptPrivateKey');
    key = registerOutput<String?>('key');
    lang = registerOutput<String?>('lang');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    signCert = registerOutput<String?>('signCert');
    signPrivateKey = registerOutput<String?>('signPrivateKey');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
